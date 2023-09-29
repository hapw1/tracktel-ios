//
//  TrackDay.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import Foundation

struct TrackDay: Identifiable, Codable {
    var id = UUID()
    var trackName: String
    var date: Date
    var sessions: [Session]
    
    
    
    init(trackName: String, date: Date, sessions: [Session]){
        self.trackName = trackName
        self.date = date
        self.sessions = sessions
    }
    
    init(){
        self.init(trackName: "", date: Date(), sessions: [Session()])
    }
    
    var lapsCompleted: Int {
        var tempLapCount = 0
        for session in sessions {
            tempLapCount += session.laps.count
        }
        return tempLapCount
    }
    
    var bestLap: Double {
        var tempBestLap: Double = 0.0
        for session in sessions {
            for lap in session.laps {
                if tempBestLap == 0 {
                    tempBestLap = lap
                }else if tempBestLap > lap {
                    tempBestLap = lap
                }
            }
        }
        return tempBestLap
    }
    
    var averageLap: Double {
        var laps: Int = 0
        var tempAverageLap: Double = 0.0
        for session in sessions {
            for lap in session.laps {
                laps += 1
                tempAverageLap +=  Double(lap)
            }
        }
        return (tempAverageLap / Double(laps))
    }
    
    var vMax: CGFloat {
        var tempVMax: CGFloat = 0.0
        for session in sessions {
            if tempVMax == 0{
                tempVMax = session.vMax
            }else if tempVMax < session.vMax{
                tempVMax = session.vMax
            }
        }
        return tempVMax
    }
}

struct Session: Identifiable, Codable {
    var id = UUID()
    var time: Date
    var bestLap: Double
    var averageLap: Double
    var laps: [Double]
    var vMax: CGFloat
    
    init(time: Date, bestLap: Double, averageLap: Double, laps: [Double], vMax: CGFloat) {
        self.time = time
        self.bestLap = bestLap
        self.averageLap = averageLap
        self.laps = laps
        self.vMax = vMax
    }
            
    init(){
        self.init(time: Date(), bestLap: 0, averageLap: 0, laps: [0], vMax: 0.0)
    }
}
