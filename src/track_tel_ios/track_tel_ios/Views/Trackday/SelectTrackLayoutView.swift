//
//  SelectTrackLayoutView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 23/06/2023.
//

import SwiftUI

struct SelectTrackLayoutView: View {
    @Binding var selectedTrack: Track
    @State private var currentLayoutIndex = 0
    @GestureState private var dragOffset: CGFloat = 0
    let trackLocation: TrackLocation
    
    var body: some View {
        
        VStack{
            Text(trackLocation.name)
                .font(.system(size: 26))
                .fontWeight(.light)
            Text("\(getFormattedDate(format:"EEEE, MMM d, yyyy",date:Date()))")
                .font(.system(size: 18))
                .fontWeight(.ultraLight)
            ZStack{
                ForEach(0..<trackLocation.tracks.count, id: \.self) { index in
                    Image(trackLocation.tracks[index].trackInformation.layout)
                        .frame(width: 100, height: 300)
                        .opacity(currentLayoutIndex == index ? 1.0 : 0.5)
                        .scaleEffect(currentLayoutIndex == index ? 0.5 : 0.2)
                        .offset(x: CGFloat(index - currentLayoutIndex) * 100 + dragOffset, y: 0)
                }
            }
            .gesture(
                DragGesture()
                    .onEnded({ value in
                        let threshold: CGFloat = 50
                        if value.translation.width > threshold {
                            withAnimation{
                                //selectedTrack = trackLocation.tracks[currentLayoutIndex]
                                currentLayoutIndex = max(0, currentLayoutIndex - 1)
                            }
                        }else if value.translation.width < -threshold {
                            withAnimation{
                                //selectedTrack = trackLocation.tracks[currentLayoutIndex]
                                currentLayoutIndex = min(trackLocation.tracks.count - 1, currentLayoutIndex + 1)
                            }
                        }
                    }
                            ))
            
            HStack{
                Picker(selection: $currentLayoutIndex, label: Text("Track Layout")){
                    Text("International").tag(0)
                    Text("Coastal").tag(1)
                    Text("National").tag(2)
                    Text("Club").tag(3)
                }
                .pickerStyle(.segmented)
            }
            HStack{
                if trackLocation.tracks[currentLayoutIndex] == selectedTrack {
                    
                }else {
                    Button(
                        action: {
                            selectedTrack = trackLocation.tracks[currentLayoutIndex]},
                        label: {
                            Text("Select Track")})

                }
            }
            
            TrackInformationCard(track: trackLocation.tracks[currentLayoutIndex])
            Text(String(currentLayoutIndex))

        }
        
        
        
    }
}

struct TrackInformationCard: View {
    let track: Track
    var body: some View {
        VStack(alignment: .leading){
            Text(track.trackInformation.layout)
                .font(.title)
                .fontWeight(.light)
            Text("\(getFormattedDistance(distance:track.trackInformation.length)) miles")
                .font(.subheadline)
                .fontWeight(.ultraLight)
        }
    }
}

