//
//  LocationData.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 23/06/2023.
//

import Foundation

class LocationData: ObservableObject {
    
    @Published var locations = TrackLocation.allLocations
    
}
