//
//  TrackDaySessionDetailView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 16/02/2023.
//

import SwiftUI

struct SessionDetailView: View {
    
    let session: Session
    
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                
                VStack{
                    Text("Session : 1")
                        .font(.largeTitle)
                        .fontWeight(.light)
                    Text("\(getFormattedDate(format:"HH:mm a", date:session.time))")
                        .font(.headline)
                        .fontWeight(.ultraLight)
                }
                HStack{
                    VStack(alignment: .leading){
                        Text("\(session.laps.count)")
                            .fontWeight(.light)
                            .font(.title)
                        Text("Laps")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                        Text("\(String(format: "%.0f", session.vMax)) mp/h")
                            .fontWeight(.light)
                            .font(.title)
                        Text("vMax")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                    }
                    Spacer()

                    VStack(alignment: .leading){
                        Text("\(getFormattedLapTime(lapTime:session.bestLap))")
                            .fontWeight(.light)
                            .font(.title)
                        Text("Best Lap")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                        Text("\(getFormattedLapTime(lapTime:session.averageLap))")
                            .fontWeight(.light)
                            .font(.title)
                        Text("Average Lap")
                            .fontWeight(.ultraLight)
                            .font(.subheadline)
                    }
                    
                }
                .padding()
                List{
                    ForEach(session.laps, id: \.self){lap in
                        let textColor: Color = (Double(lap) <= session.bestLap) ? Color.goFasterGreen : Color.red
                        Text("\(getFormattedLapTime(lapTime:lap))")
                            .foregroundColor(textColor)
                            .font(.title)
                            .fontWeight(.light)
                            .padding(EdgeInsets(top: 2, leading: 0, bottom: 2, trailing: 0))
                    }
                    .listRowBackground(Color.swimShortBlue)
                    .foregroundColor(.white)
                }
                .listStyle(.automatic)
                .background(Color.white)
                .scrollContentBackground(.hidden)
                
                
            }
            .padding()
            .foregroundColor(Color.black)
        }
        
    }
}



struct TrackDaySessionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SessionDetailView(session: Session(
            time: Date(),
            bestLap: 156.000,
            averageLap: 161.000,
            laps: [156.000, 164.000, 167.000, 159.000],
            vMax: 157.0))
    }
}
