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
    var place: String
    var image: String
    var layouts: Int
    var tracks: [Track]
    
    init(name: String, place: String, image: String, layouts: Int, tracks: [Track]) {
        self.name = name
        self.place = place
        self.image = image
        self.layouts = layouts
        self.tracks = tracks
    }
    
    init(){
        self.init(name: "", place: "", image: "", layouts: 0, tracks: [])
    }
    
}
