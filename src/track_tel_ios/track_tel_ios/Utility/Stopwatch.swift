//
//  Stopwatch.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 18/06/2023.
//

import Foundation

class Stopwatch: ObservableObject {
    @Published var elapsedTime = 0.0
    var stopwatch = Timer()
    
    func startStopwatch(){
        stopwatch = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ timer in
            self.elapsedTime += 0.01
        }
    }
    
    func stopStopwatch(){
        stopwatch.invalidate()
    }
}
