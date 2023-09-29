//
//  TrackData.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 17/02/2023.
//

import Foundation
import CoreLocation

class TrackData: ObservableObject {
    @Published var tracks = Track.allTracks
    
    
    func add(track: Track){
        tracks.append(track)
        saveTrack()
    }
    
    func setDistance(index: Int, location: CLLocation, track: Track){
        tracks[index].trackInformation.distanceFromUser = (calcDistance(myLocation: location, track: track) * 0.000621371)
        saveTrack()
    }
    
    func saveTrack(){
        do {
            let encodedData = try JSONEncoder().encode(tracks)
            try encodedData.write(to: tracksFileURL)
        }
        catch {
            fatalError("An error occurred while saving tracks: \(error)")
        }
    }
    
    func loadTracks(){
        guard let data = try? Data(contentsOf: tracksFileURL) else { return
            
        }
        do {
            let savedTracks = try JSONDecoder().decode([Track].self, from: data)
            tracks = savedTracks
        }
        catch {
            fatalError("An error occured while loading tracks: \(error)")
        }
    }
    
    private var tracksFileURL: URL {
        do {
            let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            return documentsDirectory.appendingPathComponent("trackData")
        }
        catch {
            fatalError("An error occured while getting the url: \(error)")
        }
    }
    
}
