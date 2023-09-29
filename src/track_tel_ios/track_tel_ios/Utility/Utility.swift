//
//  Utility.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 19/02/2023.
//

import Foundation
import CoreLocation
import MapKit


func getFormattedDate(format: String, date: Date) -> String {
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = format
    return dateFormat.string(from: date)
}

func getFormattedLapTime(lapTime: Double) -> String{
    let lapMinutes = String(format: "%02d", Int(lapTime) / 60 % 60)
    let lapSeconds = String(format: "%02d", Int(lapTime) % 60)
    let lapMilliseconds = String(format: "%03d", Int(lapTime*1000) % 1000)
    
    
    return "\(lapMinutes):\(lapSeconds).\(lapMilliseconds)"
}

func getFormattedDistance(distance: Double) -> String {
    let formattedDistance = String(format: "%.2f", distance)
    return formattedDistance
}

func getFormattedDistance(distance: Double, units: Bool) -> Int {
    if units {
        return Int(distance / 1000)
    }else {
        return Int(distance / 1609.344)
    }
}

func convertSpeed(speed: CLLocationSpeed, units: Bool) -> Double{
    var speedOutput = 0.0
    if units {
        speedOutput = speed * 3.6
    } else {
        speedOutput = speed * 2.23694
    }
    
    if speed < 0 {
        speedOutput = 0
    }
    
    return speedOutput
}

func hasCrossedLine(
    finishLine: (
        x1: Double,
        y1: Double,
        x2: Double,
        y2: Double),
    drivingLine: (
        x1: Double,
        y1: Double,
        x2: Double,
        y2: Double)) -> Bool{
    
            let m1 = (finishLine.y2 - finishLine.y1) / (finishLine.x2 - finishLine.x1)
            let b1 = finishLine.y1 - m1 * finishLine.x1
            
            let m2 = (drivingLine.y2 - drivingLine.y1) / (drivingLine.x2 - drivingLine.x1)
            let b2 = drivingLine.y1 - m2 * drivingLine.x1
            
            if m1 == m2 {
                return false
            }
            
            let x = (b2 - b1) / (m1 - m2)
            let y = m1 * x + b1
            
            if x < min(finishLine.x1, finishLine.x2) || x > max(finishLine.x1, finishLine.x2){
                return false
            }
            
            if x < min(drivingLine.x1, drivingLine.x2) || x > max(drivingLine.x1, drivingLine.x2){
                return false
            }
            
            return true
}


func findNearestLocation(myLocation: CLLocation, locations: [TrackLocation]) -> TrackLocation {
    var nearestLocation = TrackLocation()
    var shortestDistance = 0.0
    
    for location in locations {
        let trackLatLng = CLLocation(
            latitude: location.tracks[0].timingInformation.geofenceLocation.latitude,
            longitude: location.tracks[0].timingInformation.geofenceLocation.longitude)
        if shortestDistance == 0 {
            shortestDistance = myLocation.distance(from: trackLatLng)
            nearestLocation = location
        }
        else if myLocation.distance(from: trackLatLng) < shortestDistance {
            shortestDistance = myLocation.distance(from: trackLatLng)
            nearestLocation = location
        }
    }
    return nearestLocation
}

func calcDistance(myLocation: CLLocation, track: Track) -> Double{
    var distance : Double = 0.0
    
    let trackLocation = CLLocation(
        latitude: track.timingInformation.geofenceLocation.latitude,
        longitude: track.timingInformation.geofenceLocation.longitude)
    
    distance = myLocation.distance(from: trackLocation)
    return distance
    
}

func calculateDistance(source: MKPlacemark, destination: MKPlacemark) -> Double{
    let request = MKDirections.Request()
    request.source = MKMapItem(placemark: source)
    request.destination = MKMapItem(placemark: destination)
    
    request.transportType = MKDirectionsTransportType.automobile
    
    request.requestsAlternateRoutes = true
    
    let directions = MKDirections(request: request)
    
    var distance: Double = 0.0
    
    directions.calculate(completionHandler: {(response, error) in
        if error != nil {
            distance = 0.0
        }else {
            distance = Double((response?.routes.first!.distance)!)  * 0.00062137
            
        }
    })
    return distance
}



func sqrd(toSquare: Double) -> Double {
    return toSquare * toSquare
}

func sqrt(toSquareRoot: Double) -> Double {
    return toSquareRoot / toSquareRoot
}
