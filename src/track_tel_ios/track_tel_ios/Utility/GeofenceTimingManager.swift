//
//  GeofenceTimingManager.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 18/06/2023.
//

import Foundation
import CoreLocation

class GeofenceTimingManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    @Published var authorizationStatus: CLAuthorizationStatus?
    
    // The coordinates of the finish line left and right which form the timing line
    var finishLineLeft: CLLocation = (CLLocation(latitude: 0.0, longitude: 0.0))
    var finishLineRight: CLLocation = (CLLocation(latitude: 0.0, longitude: 0.0))
    
    // The timing geofence used to ensure the app only checks if the line has been crossed for a
    // small portion of the entire lap
    var timingGeofence = CLCircularRegion()
    
    // A list of coordinates visited by the device, used to determine if it has crossed the finish line
    var coordinates = [CLLocation()]
    
    // Used to decide whether or not the device should be checking if the finish line has been crossed
    var insideGeofence = false
    
    // The lap data for the current session
    @Published var currentLapTime = 0.0
    @Published var bestLapTime = 0.0
    @Published var averageLapTime = 0.0
    
    // The list of laps completed by the user
    @Published var laps: [Double] = []
    
    // The speed data for the current session
    var lastSpeed: CLLocationSpeed = 0.0
    @Published var vMax: CLLocationSpeed = 0.0
    
    // The stopwatch used to time the user's laps
    var stopwatch = Timer()
    var stopwatchMode: stopwatchMode = .stopped
    
    // Starts the stopwatch to begin timing a lap
    func startStopwatch(){
        stopwatch = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ timer in
            self.currentLapTime += 0.01
        }
    }
    
    // Stops the stopwatch, to be sued at the end of a lap
    func stopStopwatch(){
        stopwatch.invalidate()
    }
    
    // Resets the stopwatch to zero for the next lap
    func resetStopwatch(){
        currentLapTime = 0.0
    }

    
    override init(){
        super.init()
        locationManager.delegate = self
    }
    
    // Checks whether location permissions have been granted to the app
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedWhenInUse:
            authorizationStatus = .authorizedWhenInUse
            manager.requestLocation()
            break
        case .restricted:
            authorizationStatus = .restricted
            break
        case .denied:
            authorizationStatus = .denied
            break
        case .notDetermined:
            authorizationStatus = .notDetermined
            manager.requestAlwaysAuthorization()
            break
        default:
            break
        }
    }
    
    // Runs when the geofence has been entered
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("geofence entered")
        // Once this variable is set to true, the app will begin to check whether the finish line has been crossed.
        insideGeofence = true
    }
    
    // Runs when the geofence has been exited
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("geofence exited")
        // Once this variable is set to false, the app will stop checking whether or not the finish line has been crossed
        insideGeofence = false
    }
    
    // Runs everytime the devices location is updated
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Adds the latest set of coordinates to the array
        coordinates.append(locations.last ?? CLLocation(latitude: 0.0, longitude: 0.0))
        // Updates the latest achieved speed
        lastSpeed = locations.last?.speed ?? 0
        // Checks if a new vMax has been achieved
        vMax = calculateVMax(vMax: vMax, lastSpeed: lastSpeed)
        //Checks whether the geofence has been entered, if so, the app will check to see if the finish line has been crossed
        if insideGeofence {
            // Checks whether the finish line has been crossed, if so, the app will reset the timer and calculate the new lap times
            if shouldStartNewLap(lastLocation: coordinates[coordinates.endIndex - 2], currentLocation: coordinates[coordinates.endIndex - 1]){
                // Checks whether or not the user is crossing the line for the first time
                if stopwatchMode == .stopped {
                    // Starts the stopwatch for the first timed lap
                    startStopwatch()
                    // Updates the stopwatch mode
                    stopwatchMode = .running
                }else {
                    // Begins the process of starting a new lap
                    startNewLap()
                }
                
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error: \(error.localizedDescription)")
    }
    
    // Checks whether the finish line has been crossed
    func shouldStartNewLap(lastLocation: CLLocation, currentLocation: CLLocation) -> Bool{
        // Calls the method checking whether the finish line and the driving line have intersected
        if track_tel_ios.hasCrossedLine(
            finishLine: (
                finishLineLeft.coordinate.latitude,
                finishLineLeft.coordinate.longitude,
                finishLineRight.coordinate.latitude,
                finishLineRight.coordinate.longitude),
            drivingLine: (
                lastLocation.coordinate.latitude,
                lastLocation.coordinate.longitude,
                currentLocation.coordinate.latitude,
                currentLocation.coordinate.longitude
            )) {
            // Return that a new lap should be started
            return true
        }
        
        // The user has not yet crossed the finish line
        return false
    }
    
    // Runs when the finish line has been crossed
    func startNewLap(){
        // The stopwatch is stopped
        stopStopwatch()
        // Updates the stopwatch mode
        stopwatchMode = .stopped
        // The latest lap time is appended to the array
        laps.append(currentLapTime)
        // The app checks whether a new best has been achieved
        calculateBestLap()
        // The new average lap time is calculated
        calculateAverageLap()
        // The stopwatch is reset
        resetStopwatch()
        // The stopwatch is started again for the next lap
        startStopwatch()
        // Updates the stopwatch mode
        stopwatchMode = .running
    }
    
    // Calculates whether or not the latest lap is the fastest lap
    func calculateBestLap(){
        // Checks if this is the first lap
        if bestLapTime == 0 {
            // Sets the new best
            bestLapTime = currentLapTime
        }
        // Checks if the best lap time has been beaten
        else if currentLapTime < bestLapTime {
            // Updates the best lap time
            bestLapTime = currentLapTime
        }
    }
    
    // Calculates the new average lap time
    func calculateAverageLap(){
        var totalElapsedTime = 0.0
        // Adds each lap time together
        for lap in laps {
            totalElapsedTime += lap
        }
        // Divides the total time by the number of laps completed
        averageLapTime = totalElapsedTime / Double(laps.count)
    }
    
    // Calculates the vMax achieved by the user during the session
    func calculateVMax(vMax: CLLocationSpeed, lastSpeed: CLLocationSpeed) -> CLLocationSpeed{
        return lastSpeed > vMax ? lastSpeed : vMax
    }
    
    // This creates the geofence object surrounding the finish line of the chosen track
    func setUpGeofence(center: CLLocationCoordinate2D) -> CLCircularRegion{
        let timingGeofence = CLCircularRegion(
            // The centre of the finishline is used as the centre of the geofence
            center: center,
            // The radius of the geofence, allows for a buffer between entering the geofence and crossing the start line
            radius: 50,
            // The name of the geofence
            identifier: "Timing Geofence")
        
        // Set to trigger both when the geofence is entered and exited
        timingGeofence.notifyOnEntry = true
        timingGeofence.notifyOnExit = true
        
        return timingGeofence
    }
    
    func addGeofence(track: Track){
        
        //The left and right points of the finish line establish a line and can be checked for intersection
        //The left point of the finish line
        finishLineLeft = (
            CLLocation(
                latitude: track.timingInformation.timingLineLeft.latitude,
                longitude: track.timingInformation.timingLineLeft.longitude))
        //The right point of the finish line
        finishLineRight = (
            CLLocation(
                latitude: track.timingInformation.timingLineRight.latitude,
                longitude: track.timingInformation.timingLineRight.longitude))
        
        //Coordinates for the geofence to originate from
        let geofenceCoordinate2D = CLLocationCoordinate2D(
            latitude: track.timingInformation.geofenceLocation.latitude,
            longitude:track.timingInformation.geofenceLocation.longitude)
        
        //Creates the geofence
        timingGeofence = setUpGeofence(center: geofenceCoordinate2D)
        
        //Debugging statement
        print("geofence added")
        
        //Begins updating the user's location
        locationManager.startUpdatingLocation()
        
        //Begins monitoring the geofence for events
        locationManager.startMonitoring(for: timingGeofence)
    }
    
    func removeGeofence(){
        //Debugging statement
        print("geofence removed")
        //Ends monitoring the geofence for events
        locationManager.stopMonitoring(for: timingGeofence)
        
        //Stops updating the user's location
        locationManager.stopUpdatingLocation()
    }

}

enum stopwatchMode {
    case running
    case stopped
    case paused
}
