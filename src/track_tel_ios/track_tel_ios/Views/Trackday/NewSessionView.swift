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
            
            VStack{
                VStack{
                    Text("\(track.trackInformation.name)")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .padding(2)
                    Text("\(getFormattedDate(format:"EEEE, MMM d, yyyy",date:Date()))")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                        .padding()
                }
                TrackDataView(track: track)
                List{
                    ForEach (tempTrackday.sessions) { session in
                        SessionCard(session: session)
                    }
                    .listRowBackground(Color.swimShortBlue)
                    .foregroundColor(.white)
                }
                .listStyle(.automatic)
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
        

    }
}

struct TrackDataView: View {
    
    let track: Track
    
    var body: some View{
        ZStack{
            Color.swimShortBlue.ignoresSafeArea()
            
            
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
                .foregroundColor(.white)
                .padding()
                .background(Color.swimShortBlue.ignoresSafeArea())
                .cornerRadius(16)
                
            }
        }
        .cornerRadius(15)
        .padding()

    }
}
struct SessionCard: View{
    
    let session: Session
    
    var body: some View {
        
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Spacer()
                Text(getFormattedDate(format:"HH:mm a", date:Date()))
                    .font(.largeTitle)
                    .fontWeight(.light)
                Spacer()
                Text("\(session.laps.count) Lap(s)")
                    .font(.title2)
                    .fontWeight(.ultraLight)
                Spacer()
            }
            .fontWeight(.bold)
            VStack(alignment: .leading){
                Spacer()
                HStack(alignment: .center){
                    VStack(alignment: .trailing){
                        Text(String(getFormattedLapTime(lapTime: session.bestLap)))
                            .fontWeight(.light)
                            .font(.title)
                        Text("Best Lap")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                    }
                    VStack(alignment: .trailing){
                        Text(String(getFormattedLapTime(lapTime: session.averageLap)))
                            .fontWeight(.light)
                            .font(.title)
                        Text("Average Lap")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                    }
                    
                }
                .font(.body)
                Spacer()
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
                layout: "abingdon_map",
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
