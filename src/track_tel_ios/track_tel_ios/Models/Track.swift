//
//  Track.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import Foundation
import CoreLocation


struct Track : Identifiable, Codable, Equatable{
    static func == (lhs: Track, rhs: Track) -> Bool {
        return lhs.trackInformation.name == rhs.trackInformation.name && lhs.trackInformation.layout == rhs.trackInformation.layout
    }
    
    var id = UUID()
    var trackInformation: TrackInformation
    var timingInformation: TimingInformation
    var personalBestInformation: PersonalBestInformation
    
    init(trackInformation: TrackInformation, timingInformation: TimingInformation, personalBestInformation: PersonalBestInformation){
        self.trackInformation = trackInformation
        self.timingInformation = timingInformation
        self.personalBestInformation = personalBestInformation
    }
    
    init(){
        self.init(trackInformation: TrackInformation(), timingInformation: TimingInformation(), personalBestInformation: PersonalBestInformation())
    }
    
}

struct TrackInformation: Codable, Equatable{
    var name: String
    var place: String
    var length: CGFloat
    var turns: Int
    var isCircuit: Bool
    var layout: String
    var distanceFromUser: CLLocationDistance
    
    init(name: String, place: String, length: CGFloat, turns: Int, isCircuit: Bool, layout: String, distanceFromUser: CLLocationDistance) {
        self.name = name
        self.place = place
        self.length = length
        self.turns = turns
        self.isCircuit = isCircuit
        self.layout = layout
        self.distanceFromUser = distanceFromUser
    }
    
    init(){
        self.init(name: "", place: "", length: 0, turns: 0, isCircuit: false, layout: "", distanceFromUser: CLLocationDistance())
    }
}

struct TimingInformation: Codable, Equatable{
    var timingLineLeft: LatLng
    var timingLineRight: LatLng
    var geofenceLocation: LatLng
    
    init(timingLineLeft: LatLng, timingLineRight: LatLng, geofenceLocation: LatLng) {
        self.timingLineLeft = timingLineLeft
        self.timingLineRight = timingLineRight
        self.geofenceLocation = geofenceLocation
    }
    
    init (){
        self.init(timingLineLeft: LatLng(), timingLineRight: LatLng(), geofenceLocation: LatLng())
    }
}

struct LatLng: Codable, Equatable{
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(){
        self.init(latitude: 0.0, longitude: 0.0)
    }
}

struct PersonalBestInformation: Codable{
    var bestLap: UInt32
    var vMax: CGFloat
    var lapsCompleted: Int
    
    init(bestLap: UInt32, vMax: CGFloat, lapsCompleted: Int) {
        self.bestLap = bestLap
        self.vMax = vMax
        self.lapsCompleted = lapsCompleted
    }
    
    init (){
        self.init(bestLap: 0, vMax: 0, lapsCompleted: 0)
    }
}
