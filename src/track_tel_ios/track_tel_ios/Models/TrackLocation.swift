//
//  TrackLocations.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 23/06/2023.
//

import Foundation


struct TrackLocation: Identifiable, Codable {
    var id = UUID()
    var name: String
    var layouts: Int
    var tracks: [Track]
    
    init(name: String, layouts: Int, tracks: [Track]) {
        self.name = name
        self.layouts = layouts
        self.tracks = tracks
    }
    
    init(){
        self.init(name: "", layouts: 0, tracks: [])
    }
    
}
