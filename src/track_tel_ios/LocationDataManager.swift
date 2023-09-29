//
//  LocationDataManager.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 21/03/2023.
//

import Foundation
import CoreLocation

class LocationDataManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var authorizationStatus: CLAuthorizationStatus?
    @Published var location: CLLocationSpeed?
    
    
    var speeds: [CLLocationSpeed] = []
    
    @Published var currentLapTime: Double = 0.0
    @Published var averageLapTime: Double = 0.0
    @Published var bestLapTime: Double = 0.0
    @Published var laps: [Double] = [0.0]
    
    @Published var averageSpeed: CLLocationSpeed = 0.0
    @Published var vMax: CLLocationSpeed = 0.0
    @Published var distanceTravelled: CLLocationDistance = 0.0
    
    @Published var finishLineLeft: CLLocation = (CLLocation(latitude: 0.0, longitude: 0.0))
    @Published var finishLineRight: CLLocation = (CLLocation(latitude: 0.0, longitude: 0.0))
    
    
    
    let locationManager = CLLocationManager()
    var stopwatch = Stopwatch()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
    }
    
    func requestLocation(){
        locationManager.startUpdatingLocation()
        locationManager.distanceFilter = kCLDistanceFilterNone
    }
    
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
    
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("entered geofence")
        //startStopwatch()
        stopwatch.startStopwatch()
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("exited geofence")
        //stopStopwatch()
        //startStopwatch()
    }
    
    // Sets up the timing line geofence
    func setUpGeofence(center: CLLocationCoordinate2D) -> CLCircularRegion{
        let timingGeofence = CLCircularRegion(
            center: center,
            radius: 50,
            identifier: "Timing Geofence")
        
        timingGeofence.notifyOnEntry = true
        timingGeofence.notifyOnExit = true
        
        return timingGeofence
        
    }
    
    // Begins monitoring the timing line geofence
    func startMonitoring(track: Track){
        locationManager.startUpdatingLocation()
        
        finishLineLeft = (
            CLLocation(
                latitude: track.timingInformation.timingLineLeft.latitude,
                longitude: track.timingInformation.timingLineLeft.longitude))
        finishLineRight = (
            CLLocation(
                latitude: track.timingInformation.timingLineRight.latitude,
                longitude: track.timingInformation.timingLineRight.longitude))
        
        let geofenceCoordinate = CLLocationCoordinate2D(
            latitude: track.timingInformation.geofenceLocation.latitude,
            longitude:track.timingInformation.geofenceLocation.longitude)
        let timingGeofence = setUpGeofence(center: geofenceCoordinate)
        
        print("geofence added")
        locationManager.startMonitoring(for: timingGeofence)
        
        
    }
    
    // Ends monitoring the timing line geofence
    func endMonitoring(){
        print("geofence removed")
        locationManager.stopUpdatingLocation()
    }
    
    //Starts the stopwatch
    
    
    
    func calculateVMax(vMax: CLLocationSpeed, lastSpeed: CLLocationSpeed) -> CLLocationSpeed{
        var newVMax = vMax
        if lastSpeed > vMax {
            newVMax = lastSpeed
        }
        return newVMax
    }
    
    
    
    func calculateAverage(speeds: [CLLocationSpeed]) -> CLLocationSpeed {
        var average = 0.0
        for speed in speeds {
            average += speed
        }
        average /= Double(speeds.count)
        return average
    }
    
    func calculateDistance(latLngStart: CLLocation, latLngEnd: CLLocation) -> CLLocationDistance {
        
        let lat1 = latLngStart.coordinate.latitude
        let long1 = latLngStart.coordinate.longitude
        
        let lat2 = latLngEnd.coordinate.latitude
        let long2 = latLngEnd.coordinate.longitude
        
        _ = CLLocation(latitude: lat1, longitude: long1)
        _ = CLLocation(latitude: lat2, longitude: long2)
        
        
        let distance = latLngStart.distance(from: latLngEnd)
        
        return distance
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error: \(error.localizedDescription)")
    }
}


