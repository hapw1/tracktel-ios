//
//  NewTrackDayView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import SwiftUI
import CoreLocation

struct NewTrackDayView: View {
    
    @EnvironmentObject private var trackData: TrackData
    @EnvironmentObject private var trackDayData: TrackDayData
    @EnvironmentObject private var locationData: LocationData
    
    //@EnvironmentObject var locationDataManager : LocationDataManager
    
    private var locationManager = CLLocationManager()
    
    @State private var isPresenting = false
    
    @State private var selectedTrack = Track()
    
    
    var body: some View {

        VStack{
            
            let location = locationManager.location
            var trackLocation = TrackLocation()
            
            List{
                
                Section(header: Text("Nearest Track").foregroundColor(.black)){
                    TrackListItem(location: findNearestLocation(myLocation: location!, locations: locationData.locations), tappable: true)
                }
                .listRowBackground(Color.swimShortBlue)
                .foregroundColor(.white)
                Section(header: Text("All Tracks A-Z").foregroundColor(.black)){
                    ForEach(locations){location in
                    
                        TrackListItem(location: location, tappable: false)
                    }
                    .listRowBackground(Color.swimShortBlue)
                    .foregroundColor(.white)
                    
                }
                
            }
        }
        .onAppear{
            locationManager.requestAlwaysAuthorization()
            trackData.loadTracks()
            trackData.tracks.enumerated().forEach{ index, track in
                trackData.setDistance(
                    index: index,
                    location: locationManager.location ?? CLLocation(latitude: 0.0, longitude: 0.0),
                    track: trackData.tracks[index])
                
            }
            
            
        }
        
    }
}
extension NewTrackDayView {
    private var tracks: [Track]{
        return trackData.tracks
    }
    private var locations: [TrackLocation] {
        return locationData.locations
    }
}

struct TrackListItem: View {
    let location: TrackLocation
    //Test
    let tappable: Bool
    @State var selectedTrackIndex: Int = 0
    @State var isExpanded: Bool = false
    

    
    var body: some View {
        
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text(location.name)
                        .font(.system(size: 26))
                        .fontWeight(.light)
                    Text("\(location.layouts) layouts")
                        .font(.system(size: 20))
                        .fontWeight(.ultraLight)
                }
                Spacer()
                Button(
                    action: {
                        isExpanded.toggle()
                    },
                    label: {
                        if isExpanded {
                            Text("Hide Layouts")
                        }else {
                            Text("Show Layouts")
                        }
                    }
                )
                .buttonStyle(.bordered)
            }
            if isExpanded {
                LayoutPicker(currentLayoutIndex: $selectedTrackIndex, trackLocation: location, tappable: tappable)
                TrackCard(track: location.tracks[selectedTrackIndex])
            }
        }
    }
}

struct LayoutPicker: View {
    @Binding var currentLayoutIndex: Int
    let trackLocation: TrackLocation
    //Test
    let tappable: Bool
    @GestureState private var dragOffset: CGFloat = 0
    var body: some View {
        ZStack{
            ForEach(0..<trackLocation.tracks.count, id: \.self) { index in
                
                if tappable {
                    NavigationLink(
                        destination: NewSessionView(track: trackLocation.tracks[currentLayoutIndex]),
                        label: {
                            Image(trackLocation.tracks[index].trackInformation.layout)
                                .frame(width: 50, height: 150)
                                .opacity(currentLayoutIndex == index ? 1.0 : 0.5)
                                .scaleEffect(currentLayoutIndex == index ? 0.5 : 0.2)
                                .offset(x: CGFloat(index - currentLayoutIndex) * 100 + dragOffset, y: 0)
                        })
                }else {
                    Image(trackLocation.tracks[index].trackInformation.layout)
                        .frame(width: 50, height: 150)
                        .opacity(currentLayoutIndex == index ? 1.0 : 0.5)
                        .scaleEffect(currentLayoutIndex == index ? 0.5 : 0.2)
                        .offset(x: CGFloat(index - currentLayoutIndex) * 100 + dragOffset, y: 0)
                }
            }
        }
        
        .gesture(
            DragGesture()
                .onEnded({ value in
                    let threshold: CGFloat = 50
                    if value.translation.width > threshold {
                        withAnimation{
                            currentLayoutIndex = max(0, currentLayoutIndex - 1)
                        }
                    }else if value.translation.width < -threshold {
                        withAnimation{
                            currentLayoutIndex = min(trackLocation.tracks.count - 1, currentLayoutIndex + 1)
                        }
                    }
                })
            
        )
        
    }
}

struct TrackCard: View {
    let track: Track
    var body: some View{
        VStack(alignment: .leading){
            Text(track.trackInformation.layout)
                .font(.system(size: 26))
                .fontWeight(.light)
            HStack{
                VStack(alignment: .leading){
                    Text("\(getFormattedDistance(distance:track.trackInformation.length)) miles")
                    Text("\(track.trackInformation.turns) turns")
                }
                .font(.system(size: 20))
                .fontWeight(.ultraLight)
                Spacer()
                
                
                
            }
        }
        
    }
}

