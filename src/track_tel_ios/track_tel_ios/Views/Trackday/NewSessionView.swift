//
//  NewSessionView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 01/05/2023.
//

import SwiftUI

struct NewSessionView: View {
    
    @EnvironmentObject private var trackDayData : TrackDayData
    @State var tempTrackday : TrackDay = TrackDay()
    
    var track: Track


    var body: some View {
        
        
        ZStack{
            Color.white.ignoresSafeArea()
            
            VStack(alignment: .center){
                VStack(alignment: .leading){
                    Text("\(getFormattedDate(format:"EEEE, MMM d, yyyy",date:Date()))")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                        .padding()
                }
                TrackDataView(track: track)
                List{
                    ForEach(tempTrackday.sessions.indices) { index in
                        SessionCard(sessionNumber: index, session: tempTrackday.sessions[index])
                    }
                }
                .listStyle(.plain)
                .background(Color.white)
                .scrollContentBackground(.hidden)

                NavigationLink(
                    destination: LiveTrackDayView(tempTrackday: $tempTrackday, track: track),
                    label: {
                        Text("New Session")
                    })
                
            }
            .toolbar{
                Button(
                    action: {
                        tempTrackday.trackName = track.trackInformation.name
                        trackDayData.add(trackDay: tempTrackday)
                    },
                    label: {
                        Text("Save")
                })
            }
        }
        .navigationTitle(track.trackInformation.name)
        

    }
}

struct TrackDataView: View {
    
    let track: Track
    
    var body: some View{
        VStack(){
            VStack(alignment: .leading){
                Image(track.trackInformation.layout)
                    .resizable()
                    .scaledToFit()
                
            }
            .padding()
            Spacer()
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    Spacer()
                    Text(String(track.trackInformation.turns))
                        .fontWeight(.light)
                        .font(.title)
                    Text("Turns")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                    Text(String(getFormattedDistance(distance: track.trackInformation.length)))
                        .fontWeight(.light)
                        .font(.title)
                    Text("Miles")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("15 °C")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Temperature")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Text("32 mp/h")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Wind Speed")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                }
                Spacer()
            }
            
            
        }

    }
}
struct SessionCard: View{
    
    let sessionNumber: Int
    let session: Session
    
    var body: some View {
        
        HStack(alignment: .center){
            HStack(alignment: .center){
                VStack(alignment: .leading){
                    Spacer()
                    Text("Session \(sessionNumber)")
                        .font(.headline)
                        .fontWeight(.light)
                    Text("\(session.laps.count) Lap(s)")
                        .font(.subheadline)
                        .fontWeight(.ultraLight)
                    Spacer()
                }
                .fontWeight(.bold)
                Spacer()
                VStack(alignment: .trailing){
                    Text(String(getFormattedLapTime(lapTime: session.bestLap)))
                        .fontWeight(.light)
                        .font(.headline)
                    Text("Best Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text(String(getFormattedLapTime(lapTime: session.averageLap)))
                        .fontWeight(.light)
                        .font(.headline)
                    Text("Average Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                }
                
            }
        }
        
        
        
    }
    
}

struct NewSessionView_Previews: PreviewProvider {
    static var previews: some View {
        NewSessionView(track: Track(
            trackInformation: TrackInformation(
                name: "Abingdon Park",
                place: "Nottingham, Leicestershire",
                length: 1.8,
                turns: 8,
                isCircuit: true,
                layout: "Abingdon Main",
                distanceFromUser: 0.0),
            timingInformation: TimingInformation(
                timingLineLeft: LatLng(
                    latitude: 0,
                    longitude: 0),
                timingLineRight: LatLng(
                    latitude: 0,
                    longitude: 0),
                geofenceLocation: LatLng(
                    latitude: 0,
                    longitude: 0)),
            personalBestInformation: PersonalBestInformation(
                bestLap: 0,
                vMax: 0,
                lapsCompleted: 0)))
    }
}
