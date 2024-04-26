//
//  SessionListView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 16/02/2023.
//

import SwiftUI

struct SessionListView: View {
    var sessions: [Session]

    var body: some View {
        List{
            ForEach(sessions.indices){ index in
                NavigationLink(
                    destination: SessionDetailView(sessionNumber: index, session: sessions[index]),
                    label: {
                        SessionOverviewCard(session: sessions[index])
                    })
            }
            
        }
        .navigationTitle("Sessions")
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
    }
}

struct SessionOverviewCard: View{
    var session: Session
    var body: some View{
        VStack{
            Text(getFormattedDate(format:"HH:mm a", date:session.time))
                .fontWeight(.light)
                .font(.largeTitle)
                .padding()
            HStack{
                VStack(alignment: .leading){
                    Spacer()
                    Text("\(getFormattedLapTime(lapTime:session.bestLap))")
                        .fontWeight(.light)
                        .font(.headline)
                    Text("Best Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                    Text("\(getFormattedLapTime(lapTime:session.averageLap))")
                        .fontWeight(.light)
                        .font(.headline)
                    Text("Average Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                }
                Spacer()
                VStack(alignment: .leading){
                    Spacer()
                    Text("\(String(format: "%.0f", session.vMax)) mp/h")
                        .fontWeight(.light)
                        .font(.headline)
                    Text("vMax")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                    Text("\(session.laps.count)")
                        .fontWeight(.light)
                        .font(.headline)
                    Text("Lap(s)")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                }
            }
        }
        
    }
}

struct SessionListView_Previews: PreviewProvider {
    static var previews: some View {
        SessionListView(sessions: [Session(time: Date(), bestLap: 156, averageLap: 161, laps: [156, 157, 167, 159], vMax: 127.0)]).environmentObject(TrackDayData())
    }
}


