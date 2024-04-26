//
//  TrackLayoutSelectView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 07/04/2024.
//

import SwiftUI

struct TrackLayoutSelectView: View {
    let trackLocation: TrackLocation
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible())]) {
                ForEach(trackLocation.tracks){ layout in
                    NavigationLink(destination: NewSessionView(track: layout), label: {                    LayoutCard(layout: layout, circuitImage: trackLocation.image)})
                }
            }
        }
        .navigationTitle("Select Layout")
        
        
    }
}

struct LayoutCard: View {
    let layout: Track
    let circuitImage: String
    var body: some View {
        
        ZStack{
            Image(circuitImage)
                .resizable()
                .scaledToFill()
                .background(Color.blue.opacity(0.2))
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped()
                .opacity(0.4)
            HStack{
                Image(layout.trackInformation.layout)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)

                VStack (alignment: .leading){
                    Text(layout.trackInformation.name)
                        .font(.title)
                        .fontWeight(.light)
                    Spacer()
                    Text("Personal Best: \(getFormattedLapTime(lapTime: Double(layout.personalBestInformation.bestLap)))")
                        .fontWeight(.light)
                        .font(.subheadline)
                    Text("\(getFormattedDistance(distance: layout.trackInformation.length)) miles")
                        .font(.subheadline)
                        .fontWeight(.light)

                        
                    Text("\(layout.trackInformation.turns) turns")
                        .font(.subheadline)
                        .fontWeight(.light)


                }
                .foregroundColor(.black)
                .padding()
                .frame(height: 150)
                
            }
        }
        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
    }
}

#Preview {
    TrackLayoutSelectView(trackLocation: TrackLocation(
        name: "Anglesey",
        place: "North Wales",
        image: "angleseycircuitimage",
        layouts: 4,
        tracks: [Track(
            trackInformation: TrackInformation(
                name: "Anglesey International",
                place: "Anglesey, North Wales",
                length: 2.1,
                turns: 10,
                isCircuit: true,
                layout: "Anglesey International",
                distanceFromUser: 0.0),
            timingInformation: TimingInformation(
                timingLineLeft: LatLng(
                    latitude: 53.18856,
                    longitude: -4.49645),
                timingLineRight: LatLng(
                    latitude: 53.18826,
                    longitude: -4.49635),
                geofenceLocation: LatLng(
                    latitude: 53.18841,
                    longitude: -4.49648)),
            personalBestInformation: PersonalBestInformation(
                bestLap: 134,
                vMax: 0,
                lapsCompleted: 0)),
                 Track(
                     trackInformation: TrackInformation(
                         name: "Anglesey Coastal",
                         place: "Anglesey, North Wales",
                         length: 1.55,
                         turns: 8,
                         isCircuit: true,
                         layout: "Anglesey Coastal",
                         distanceFromUser: 0.0),
                     timingInformation: TimingInformation(
                         timingLineLeft: LatLng(
                             latitude: 53.18856,
                             longitude: -4.49645),
                         timingLineRight: LatLng(
                             latitude: 53.18826,
                             longitude: -4.49635),
                         geofenceLocation: LatLng(
                             latitude: 53.18841,
                             longitude: -4.49648)),
                     personalBestInformation: PersonalBestInformation(
                         bestLap: 124,
                         vMax: 0,
                         lapsCompleted: 0)),
                 Track(
                     trackInformation: TrackInformation(
                         name: "Anglesey National",
                         place: "Anglesey, North Wales",
                         length: 1.2,
                         turns: 6,
                         isCircuit: true,
                         layout: "Anglesey National",
                         distanceFromUser: 0.0),
                     timingInformation: TimingInformation(
                         timingLineLeft: LatLng(
                             latitude: 53.19021,
                             longitude: -4.49763),
                         timingLineRight: LatLng(
                             latitude: 53.19014,
                             longitude: -4.49735),
                         geofenceLocation: LatLng(
                             latitude: 53.19017,
                             longitude: -4.49749)),
                     personalBestInformation: PersonalBestInformation(
                         bestLap: 87,
                         vMax: 0,
                         lapsCompleted: 0)),
                 Track(
                     trackInformation: TrackInformation(
                         name: "Anglesey Club",
                         place: "Anglesey, North Wales",
                         length: 0.8,
                         turns: 4,
                         isCircuit: true,
                         layout: "Anglesey Club",
                         distanceFromUser: 0.0),
                     timingInformation: TimingInformation(
                         timingLineLeft: LatLng(
                             latitude: 53.18856,
                             longitude: -4.49645),
                         timingLineRight: LatLng(
                             latitude: 53.18826,
                             longitude: -4.49635),
                         geofenceLocation: LatLng(
                             latitude: 53.18841,
                             longitude: -4.49648)),
                     personalBestInformation: PersonalBestInformation(
                        bestLap: 59,
                         vMax: 0,
                         lapsCompleted: 0))]))
}
