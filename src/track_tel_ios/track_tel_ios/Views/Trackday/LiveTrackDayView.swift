//
//  LiveTrackDayView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import SwiftUI
import CoreLocation

struct LiveTrackDayView: View {
    
    @State private var orientation = UIDevice.current.orientation
    
    @StateObject var geoTimingManager: GeofenceTimingManager = GeofenceTimingManager()

    @Binding var tempTrackday: TrackDay
    
    var track: Track

    
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            if orientation.isLandscape{
                //LiveTrackDayLandscapeView(locationDataManager: locationDataManager, tempTrackday: $tempTrackday, track: track)
                
            }else{
                LiveTrackDayPortraitView(geoTimingManager: geoTimingManager, tempTrackday: $tempTrackday, track: track)
            }
        }
        .detectOrientation($orientation)
        .onAppear{
            geoTimingManager.addGeofence(track: track)
        }
        .onDisappear{
            geoTimingManager.removeGeofence()
        }
    }
}








struct LiveTrackDayLandscapeView: View {
    
    @State var geoTimingManager: GeofenceTimingManager
    @State var units = false
    @State var speed: CLLocationSpeed = 0
    
    @Binding var tempTrackday: TrackDay

    
    var track: Track
        
    var body: some View {
        
        
        VStack(alignment: .center){
            HStack{
                Spacer()
                VStack(alignment: .center){
                    Spacer()
                    //LapTimerView(locationDataManager: locationDataManager, tempTrackday: $tempTrackday, track: track)
                    Spacer()
                    //LapsCompletedView(lapsCompleted: geoTimingManager.laps.count)
                    Spacer()
                }
                Spacer()
                VStack{
                    Speedometer(units: $units)
                }
                Spacer()
            }
            EndSessionButton()
        }
        
    }
}

struct LiveTrackDayPortraitView: View {
    
    @State var units = false
    @State var speed: CLLocationSpeed = 0
    @State var geoTimingManager: GeofenceTimingManager
    
    @Binding var tempTrackday: TrackDay

    
    var track: Track
    
    
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        VStack{
            Spacer()
            LapTimerView(geoTimingManager: geoTimingManager, tempTrackday: $tempTrackday, track: track)
            Spacer()
            //Speedometer(units: $units)
            Text(String(geoTimingManager.locationManager.location?.speed ?? 10))
                .font(.title)
                .fontWeight(.light)
            Text(units ? "KPH" : "MPH")
                .font(.subheadline)
                .fontWeight(.ultraLight)
            Spacer()
            LapsCompletedView(geoTimingManager: geoTimingManager)
            Spacer()
            EndSessionButton()
            Spacer()
        }
    }
}
struct LapTimerView: View {
    //@State var currentLapTime: Double = 0.0
    //@State var bestLapTime: Double = 148.234
    //@State var averageLapTime: Double = 151.876
    //var laps: [Double] = []
    
    //@StateObject var stopwatch = Stopwatch()
    @StateObject var geoTimingManager: GeofenceTimingManager
    
    @Binding var tempTrackday: TrackDay
    let track: Track
    
    
    
    var body: some View{
        
        HStack{
            
            VStack(alignment: .trailing){
                Text("Current: ")
                Text("Best: ")
                Text("Average: ")
            }
            VStack(alignment: .leading){
                Text("\(getFormattedLapTime(lapTime: geoTimingManager.currentLapTime))")
                Text("\(getFormattedLapTime(lapTime:geoTimingManager.bestLapTime)) ")
                Text("\(getFormattedLapTime(lapTime:geoTimingManager.averageLapTime)) ")
            }
        }
        .font(.system(size: 36))
        
        .onAppear{
            //geoTimingManager.addGeofence(track: track)
            //geoTimingManager.startStopwatch()
            //geoTimingManager.stopwatch.startStopwatch()
        }
        .onDisappear{
            //geoTimingManager.removeGeofence()

            //tempTrackday.sessions[0].averageLap = geoTimingManager.averageLapTime
            //tempTrackday.sessions[0].bestLap = geoTimingManager.bestLapTime
            if geoTimingManager.laps.count > 0 {
                tempTrackday.sessions.append(
                    Session(
                        time: Date(),
                        bestLap: geoTimingManager.bestLapTime,
                        averageLap: geoTimingManager.averageLapTime,
                        laps: geoTimingManager.laps,
                        vMax: geoTimingManager.vMax))
            }
            

        }
        
        .padding()
    }
    
}

struct LapsCompletedView: View {
    @StateObject var geoTimingManager: GeofenceTimingManager

    var body: some View{
        VStack{
            Text("\(geoTimingManager.laps.count)")
                .font(.system(size: 36))
            Text("Laps")
                .font(.system(size: 24))
        }
    }
}
struct EndSessionButton: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        Button(
            action: {
                self.presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Text("End Session")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.swimShortBlue)
                    .clipShape(Capsule())
            })
    }
}


