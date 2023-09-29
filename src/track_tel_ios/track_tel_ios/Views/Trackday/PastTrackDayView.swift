//
//  PastTrackDayView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import SwiftUI

struct PastTrackDayView: View {
    
    @EnvironmentObject private var trackDayData: TrackDayData
    
    

    var body: some View {
        
        List{
            ForEach(trackDayData.trackDays){trackday in
                
                NavigationLink(
                    destination: SessionListView(sessions: trackday.sessions)
                        //.environmentObject(trackDayData)
                    ,
                    label: {TrackDayCard(trackDay: trackday)
                    })
            }
            .listRowBackground(Color.swimShortBlue)
            .foregroundColor(.white)
        }
        .onAppear{
            trackDayData.loadTrackDays()
        }
        .listStyle(.automatic)
        .background(Color.white)
        .scrollContentBackground(.hidden)
    }
}

extension PastTrackDayView{
    private var trackdays: [TrackDay]{
        return trackDayData.trackDays
    }
}


struct TrackDayCard: View {
    let trackDay: TrackDay
    
    var body: some View{
        VStack(alignment: .leading){
            Text(trackDay.trackName)
                .fontWeight(.light)
                .font(.largeTitle)
            Text(getFormattedDate(format:"EEEE, MMM d, yyyy", date:trackDay.date))
                .font(.system(size: 18))
                .fontWeight(.ultraLight)
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Spacer()
                    Text("\(getFormattedLapTime(lapTime:trackDay.bestLap))")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Best Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                    Text("\(getFormattedLapTime(lapTime:trackDay.averageLap))")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Average Lap")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                }
                Spacer()
                VStack(alignment: .leading){
                    Spacer()
                    Text("\(String(format: "%.0f", trackDay.vMax)) mp/h")
                        .fontWeight(.light)
                        .font(.title)
                    Text("vMax")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                    
                    Text("\(trackDay.lapsCompleted)")
                        .fontWeight(.light)
                        .font(.title)
                    Text("Laps")
                        .fontWeight(.ultraLight)
                        .font(.subheadline)
                    Spacer()
                }
            }
            
        }
    }
}



struct PastTrackDayView_Previews: PreviewProvider {
    static var previews: some View {
        PastTrackDayView()
            .environmentObject(TrackDayData())
    }
}
