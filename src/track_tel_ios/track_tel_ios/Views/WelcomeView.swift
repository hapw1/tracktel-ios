//
//  WelcomeView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 16/02/2023.
//

import SwiftUI

struct WelcomeView: View {

    @StateObject var trackData = TrackData()
    @StateObject var trackDayData = TrackDayData()
    @StateObject var locationData = LocationData()
    
    @StateObject var locationDataManager = LocationDataManager()

    
    var body: some View {
        
        
        TabView{
            
            NavigationView{
                NewTrackDayView()
                    .environmentObject(locationData)
                    .environmentObject(trackData)
            }
            .tabItem{Label("NewTrackday", systemImage: "car.circle")}

            NavigationView{
                PastTrackDayView()
            }
            .tabItem{Label("Past Trackdays", systemImage: "clock.arrow.circlepath")}
            NavigationView{
                SpeedometerView()
            }
            .tabItem{Label("Speedometer", systemImage: "speedometer")}

            
            
        }
        .onAppear{
            let options: UNAuthorizationOptions = [.badge, .sound, .alert]
              UNUserNotificationCenter.current()
                .requestAuthorization(options: options) { _, error in
                  if let error = error {
                    print("Error: \(error)")
                  }
                }
        }
       
        .environmentObject(trackDayData)
        .environmentObject(locationDataManager)
    }
}

// A main menu button that displays the possible destinations for a user
struct MenuButton: View {
    let title: String
    
    var body: some View{
        
        Text(title)
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 200)
            .background(Color.swimShortBlue)
            .clipShape(Capsule())
    }
}


