//
//  TrackDayData.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 19/02/2023.
//

import Foundation

class TrackDayData: ObservableObject {
    @Published var trackDays = TrackDay.allTrackDays
    
    func add(trackDay: TrackDay) {
        trackDays.append(trackDay)
        saveTrackDay()
    }
    
    
    
    func saveTrackDay(){
        do {
            let encodedData = try JSONEncoder().encode(trackDays)
            try encodedData.write(to: trackDaysFileURL)
        }
        catch {
            fatalError("An error occurred while saving track day: \(error)")
        }
    }
    
    func loadTrackDays(){
        guard let data = try? Data(contentsOf: trackDaysFileURL) else { return
            
        }
        do {
            let savedTrackDays = try JSONDecoder().decode([TrackDay].self, from: data)
            trackDays = savedTrackDays
        }
        catch {
            fatalError("An error occured while loading track days: \(error)")
        }
    }
    
    private var trackDaysFileURL: URL {
        do {
            let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            return documentsDirectory.appendingPathComponent("trackDayData")
        }
        catch {
            fatalError("An error occured while getting the url: \(error)")
        }
    }
}
