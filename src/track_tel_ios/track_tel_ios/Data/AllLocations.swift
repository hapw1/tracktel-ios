//
//  AllLocations.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 23/06/2023.
//

import Foundation

extension TrackLocation {
    
    static let allTracks: [Track] = [
        
        
        
        
       
        
        
        
       
        
        
       
      
        
        
       
    ]
    
    
    
    static let allLocations : [TrackLocation] = [
        //Abingdon
        TrackLocation(
            name: "Abingdon",
            layouts: 1,
            tracks: [Track(
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
                    lapsCompleted: 0))]
        ),
        //Anglesey
        TrackLocation(
            name: "Anglesey",
            layouts: 4,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Anglesey Circuit",
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
                    bestLap: 0,
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
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Anglesey National Circuit",
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
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Anglesey Club Circuit",
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
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0))]),
        //Bedford
        TrackLocation(
            name: "Bedford Autodrome",
            layouts: 5,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Bedford Autodrome",
                    place: "Thurleigh, Bedfordshire",
                    length: 3.6,
                    turns: 0,
                    isCircuit: true,
                    layout: "Bedford Gran Turismo",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.23525,
                        longitude: -0.47442),
                    timingLineRight: LatLng(
                        latitude: 52.23506,
                        longitude: -0.47419),
                    geofenceLocation: LatLng(
                        latitude: 52.23515,
                        longitude: -0.47429)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Bedford Autodrome",
                             place: "Thurleigh, Bedfordshire",
                             length: 1.7,
                             turns: 0,
                             isCircuit: true,
                             layout: "Bedford West",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 52.23525,
                                 longitude: -0.47442),
                             timingLineRight: LatLng(
                                 latitude: 52.23506,
                                 longitude: -0.47419),
                             geofenceLocation: LatLng(
                                 latitude: 52.23515,
                                 longitude: -0.47429)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Bedford Autodrome",
                             place: "Thurleigh, Bedfordshire",
                             length: 1.3,
                             turns: 0,
                             isCircuit: true,
                             layout: "Bedford South",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 52.23056,
                                 longitude: -0.47396),
                             timingLineRight: LatLng(
                                 latitude: 52.23028,
                                 longitude: -0.47391),
                             geofenceLocation: LatLng(
                                 latitude: 52.23045,
                                 longitude: -0.47393)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Bedford Autodrome",
                             place: "Thurleigh, Bedfordshire",
                             length: 0.67,
                             turns: 0,
                             isCircuit: true,
                             layout: "Bedford North",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 52.23728,
                                 longitude: -0.46697),
                             timingLineRight: LatLng(
                                 latitude: 52.23714,
                                 longitude: -0.46689),
                             geofenceLocation: LatLng(
                                 latitude: 52.23721,
                                 longitude: -0.46693)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Bedford Autodrome",
                             place: "Thurleigh, Bedfordshire",
                             length: 0.73,
                             turns: 0,
                             isCircuit: true,
                             layout: "Bedford East",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 52.23414,
                                 longitude: -0.46093),
                             timingLineRight: LatLng(
                                 latitude: 52.23398,
                                 longitude: -0.46089),
                             geofenceLocation: LatLng(
                                 latitude: 52.23406,
                                 longitude: -0.46090)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0))]),
        //Blyton Park
        TrackLocation(
            name: "Blyton Park",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Blyton Park",
                    place: "Gainsborough, Lincolnshire",
                    length: 1.6,
                    turns: 9,
                    isCircuit: true,
                    layout: "Blyton Park",
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
                    lapsCompleted: 0))]),
        //Brands Hatch
        TrackLocation(
            name: "Brands Hatch",
            layouts: 2,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Brands Hatch",
                    place: "Longfield, Kent",
                    length: 2.3,
                    turns: 9,
                    isCircuit: true,
                    layout: "Brands Hatch GP",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 51.36045,
                        longitude: 0.26027),
                    timingLineRight: LatLng(
                        latitude: 51.36018,
                        longitude: 0.26047),
                    geofenceLocation: LatLng(
                        latitude: 51.36028,
                        longitude: 0.26028)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Brands Hatch",
                             place: "Longfield, Kent",
                             length: 1.2,
                             turns: 6,
                             isCircuit: true,
                             layout: "Brands Hatch Indy",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 51.36045,
                                 longitude: 0.26027),
                             timingLineRight: LatLng(
                                 latitude: 51.36018,
                                 longitude: 0.26047),
                             geofenceLocation: LatLng(
                                 latitude: 51.36028,
                                 longitude: 0.26028)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0))]),
        //Cadwell Park
        TrackLocation(
            name: "Cadwell Park",
            layouts: 3,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Cadwell Park",
                    place: "Louth, Lincolnshire",
                    length: 2.173,
                    turns: 11,
                    isCircuit: true,
                    layout: "Cadwell Park Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 53.31021,
                        longitude: -0.05925),
                    timingLineRight: LatLng(
                        latitude: 53.31032,
                        longitude: -0.05965),
                    geofenceLocation: LatLng(
                        latitude: 53.31032,
                        longitude: -0.05943)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Cadwell Park",
                             place: "Louth, Lincolnshire",
                             length: 0.848,
                             turns: 11,
                             isCircuit: true,
                             layout: "Cadwell Park Woodlands",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 53.31021,
                                 longitude: -0.05925),
                             timingLineRight: LatLng(
                                 latitude: 53.31032,
                                 longitude: -0.05965),
                             geofenceLocation: LatLng(
                                 latitude: 53.31032,
                                 longitude: -0.05943)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0)),
                     Track(
                         trackInformation: TrackInformation(
                             name: "Cadwell Park",
                             place: "Louth, Lincolnshire",
                             length: 1.476,
                             turns: 10,
                             isCircuit: true,
                             layout: "Cadwell Park Club",
                             distanceFromUser: 0.0),
                         timingInformation: TimingInformation(
                             timingLineLeft: LatLng(
                                 latitude: 53.30712,
                                 longitude: -0.06287),
                             timingLineRight: LatLng(
                                 latitude: 53.30702,
                                 longitude: -0.06268),
                             geofenceLocation: LatLng(
                                 latitude: 53.30707,
                                 longitude: -0.06278)),
                         personalBestInformation: PersonalBestInformation(
                             bestLap: 0,
                             vMax: 0,
                             lapsCompleted: 0))]),
        //Castle Combe
        TrackLocation(
            name: "Castle Combe",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Castle Combe",
                    place: "Castle Combe, Wiltshire",
                    length: 1.198,
                    turns: 6,
                    isCircuit: true,
                    layout: "Castle Combe Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 51.49288,
                        longitude: -2.21608),
                    timingLineRight: LatLng(
                        latitude: 51.49257,
                        longitude: -2.21594),
                    geofenceLocation: LatLng(
                        latitude: 51.49271,
                        longitude: -2.21612)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Croft
        TrackLocation(
            name: "Croft",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Croft",
                    place: "Dalton-on-Tees, North Yorkshire",
                    length: 2.127,
                    turns: 10,
                    isCircuit: true,
                    layout: "Croft Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 54.45543,
                        longitude: -1.55581),
                    timingLineRight: LatLng(
                        latitude: 54.45535,
                        longitude: -1.55529),
                    geofenceLocation: LatLng(
                        latitude: 54.45531,
                        longitude: -1.55559)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Donington
        TrackLocation(
            name: "Donington",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Donington Park",
                    place: "Nottingham, Leicestershire",
                    length: 2.5,
                    turns: 9,
                    isCircuit: true,
                    layout: "Donington Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.82967,
                        longitude: -1.37960),
                    timingLineRight: LatLng(
                        latitude: 52.83001,
                        longitude: -1.37949),
                    geofenceLocation: LatLng(
                        latitude: 52.82984,
                        longitude: -1.37954)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Goodwood
        TrackLocation(
            name: "Goodwood Estate",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Goodwood",
                    place: "Goodwood, Chichester",
                    length: 2.367,
                    turns: 9,
                    isCircuit: true,
                    layout: "Goodwood Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 50.85797,
                        longitude: -0.75240),
                    timingLineRight: LatLng(
                        latitude: 50.85793,
                        longitude: -0.75283),
                    geofenceLocation: LatLng(
                        latitude: 50.85802,
                        longitude: -0.75263)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Great Tew Estate
        TrackLocation(
            name: "Great Tew Estate",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Great Tew Estate",
                    place: "Chipping Norton, Oxford",
                    length: 1,
                    turns: 8,
                    isCircuit: true,
                    layout: "Great Tew Estate",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(latitude: 51.93402, longitude: -1.42080),
                    timingLineRight: LatLng(latitude: 51.93391, longitude: -1.42075),
                    geofenceLocation: LatLng(latitude: 51.93396, longitude: -1.42077)),
                personalBestInformation: PersonalBestInformation())]),
        //Jurby
        TrackLocation(
            name: "Jurby",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Jurby",
                    place: "Isle of Man",
                    length: 1.7,
                    turns: 8,
                    isCircuit: true,
                    layout: "Jurby Full",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(latitude: 54.35567, longitude: -5.52363),
                    timingLineRight: LatLng(latitude: 54.35555, longitude: -5.52357),
                    geofenceLocation: LatLng(latitude: 54.35562, longitude: -5.52360)),
                personalBestInformation: PersonalBestInformation())]),
        //Kirkistown
        TrackLocation(
            name: "Kirkistown",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Kirkistown",
                    place: "Kirkistown, Northern Ireland",
                    length: 1.5,
                    turns: 7,
                    isCircuit: true,
                    layout: "Kirkistown Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 54.45680,
                        longitude: -5.47218),
                    timingLineRight: LatLng(
                        latitude: 54.45656,
                        longitude: -5.47214),
                    geofenceLocation: LatLng(
                        latitude: 54.45667,
                        longitude: -5.47226)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Knockhill
        TrackLocation(
            name: "Knockhill Cirucit",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Knockhill",
                    place: "Fife, Scotland",
                    length: 1.3,
                    turns: 8,
                    isCircuit: true,
                    layout: "Knockhill Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 56.13105,
                        longitude: -3.50657),
                    timingLineRight: LatLng(
                        latitude: 56.13077,
                        longitude: -3.50662),
                    geofenceLocation: LatLng(
                        latitude: 56.13092,
                        longitude: -3.50673)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //LLandow
        TrackLocation(
            name: "Llandow",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Llandow",
                    place: "South Wales",
                    length: 0.9,
                    turns: 12,
                    isCircuit: true,
                    layout: "Llandow Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(latitude: 51.43257, longitude: -3.49642),
                    timingLineRight: LatLng(latitude: 51.43236, longitude: -3.49638),
                    geofenceLocation: LatLng(latitude: 51.43247, longitude: -3.49638)),
                personalBestInformation: PersonalBestInformation())]),
        //Lydden Hill
        TrackLocation(
            name: "Lydden Hill",
            layouts: 1,
            tracks: [ Track(
                trackInformation: TrackInformation(
                    name: "Lydden Hill",
                    place: "Denton-on-Wooton, Kent",
                    length: 1,
                    turns: 7,
                    isCircuit: true,
                    layout: "Lydden Hill Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 51.17725,
                        longitude: 1.19814),
                    timingLineRight: LatLng(
                        latitude: 51.17750,
                        longitude: 1.19835),
                    geofenceLocation: LatLng(
                        latitude: 51.17733,
                        longitude: 1.19833)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Mallory Park
        TrackLocation(
            name: "Mallory Park",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Mallory Park",
                    place: "Kirkby Mallory, Leicester",
                    length: 1.198,
                    turns: 6,
                    isCircuit: true,
                    layout: "Mallory Park Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.59867,
                        longitude: -1.33677),
                    timingLineRight: LatLng(
                        latitude: 52.59867,
                        longitude: -1.33622),
                    geofenceLocation: LatLng(
                        latitude: 52.59873,
                        longitude: -1.33698)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Mondello Park
        TrackLocation(
            name: "Mondello Park",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Mondello Park",
                    place: "County Kildare, Northern Ireland",
                    length: 2.268,
                    turns: 13,
                    isCircuit: true,
                    layout: "Mondello Park Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 53.25718,
                        longitude: -6.74498),
                    timingLineRight: LatLng(
                        latitude: 53.25709,
                        longitude: -6.74539),
                    geofenceLocation: LatLng(
                        latitude: 53.25720,
                        longitude: -6.74523)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Olivers Mount
        TrackLocation(
            name: "Oliver's Mount",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Oliver's Mount",
                    place: "Scarborough, East Yorkshire",
                    length: 2.43,
                    turns: 9,
                    isCircuit: true,
                    layout: "Olivers Mount Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(latitude: 54.25913, longitude: -0.40957),
                    timingLineRight: LatLng(latitude: 54.25922, longitude: -0.40991),
                    geofenceLocation: LatLng(latitude: 54.25918, longitude: -0.40974)),
                personalBestInformation: PersonalBestInformation())]),
        //Oultan Park
        TrackLocation(
            name: "Oultan Park",
            layouts: 3,
            tracks: [ Track(
                trackInformation: TrackInformation(
                    name: "Oultan Park",
                    place: "Little Budworth, Cheshire",
                    length: 2.692,
                    turns: 8,
                    isCircuit: true,
                    layout: "Oultan Park International",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 53.18005,
                        longitude: -2.61255),
                    timingLineRight: LatLng(
                        latitude: 53.17999,
                        longitude: -2.61305),
                    geofenceLocation: LatLng(
                        latitude: 53.18010,
                        longitude: -2.61284)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
                      Track(
                          trackInformation: TrackInformation(
                              name: "Oultan Park",
                              place: "Little Budworth, Cheshire",
                              length: 2.26,
                              turns: 7,
                              isCircuit: true,
                              layout: "Oultan Park Island",
                              distanceFromUser: 0.0),
                          timingInformation: TimingInformation(
                              timingLineLeft: LatLng(
                                  latitude: 53.18005,
                                  longitude: -2.61255),
                              timingLineRight: LatLng(
                                  latitude: 53.17999,
                                  longitude: -2.61305),
                              geofenceLocation: LatLng(
                                  latitude: 53.18010,
                                  longitude: -2.61284)),
                          personalBestInformation: PersonalBestInformation(
                              bestLap: 0,
                              vMax: 0,
                              lapsCompleted: 0)),
                      Track(
                          trackInformation: TrackInformation(
                              name: "Oultan Park",
                              place: "Little Budworth, Cheshire",
                              length: 1.66,
                              turns: 6,
                              isCircuit: true,
                              layout: "Oultan Park Fosters",
                              distanceFromUser: 0.0),
                          timingInformation: TimingInformation(
                              timingLineLeft: LatLng(
                                  latitude: 53.18005,
                                  longitude: -2.61255),
                              timingLineRight: LatLng(
                                  latitude: 53.17999,
                                  longitude: -2.61305),
                              geofenceLocation: LatLng(
                                  latitude: 53.18010,
                                  longitude: -2.61284)),
                          personalBestInformation: PersonalBestInformation(
                              bestLap: 0,
                              vMax: 0,
                              lapsCompleted: 0))]),
        //Pembrey
        TrackLocation(
            name: "Pembrey",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Pembrey",
                    place: "LLanelli, Carmarthenshire",
                    length: 1.456,
                    turns: 8,
                    isCircuit: true,
                    layout: "Pembrey Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(latitude: 51.70595, longitude: -4.32408),
                    timingLineRight: LatLng(latitude: 51.70581, longitude: -4.32365),
                    geofenceLocation: LatLng(latitude: 51.70589, longitude: -4.32388)),
                personalBestInformation: PersonalBestInformation())]),
        //Silverstone
        TrackLocation(
            name: "Silverstone",
            layouts: 4,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Silverstone GP Circuit",
                    place: "Banbury, Oxfordshire",
                    length: 3.67,
                    turns: 18,
                    isCircuit: true,
                    layout: "Silverstone GP",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.06932,
                        longitude: -1.02246),
                    timingLineRight: LatLng(
                        latitude: 52.06910,
                        longitude: -1.02202),
                    geofenceLocation: LatLng(
                        latitude: 52.06922,
                        longitude: -1.02226)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
            Track(
                trackInformation: TrackInformation(
                    name: "Silverstone National Circuit",
                    place: "Banbury, Oxfordshire",
                    length: 1.639,
                    turns: 9,
                    isCircuit: true,
                    layout: "Silverstone National",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.06932,
                        longitude: -1.02246),
                    timingLineRight: LatLng(
                        latitude: 52.06910,
                        longitude: -1.02202),
                    geofenceLocation: LatLng(
                        latitude: 52.06922,
                        longitude: -1.02226)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
            Track(
                trackInformation: TrackInformation(
                    name: "Silverstone Southern Circuit",
                    place: "Banbury, Oxfordshire",
                    length: 1.669,
                    turns: 6,
                    isCircuit: true,
                    layout: "Silverstone Southern",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.07896,
                        longitude: -1.01525),
                    timingLineRight: LatLng(
                        latitude: 52.07865,
                        longitude: -1.01519),
                    geofenceLocation: LatLng(
                        latitude: 52.07881,
                        longitude: -1.01522)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0)),
            Track(
                trackInformation: TrackInformation(
                    name: "Silverstone Bridge GP Circuit",
                    place: "Banbury, Oxfordshire",
                    length: 3.194,
                    turns: 18,
                    isCircuit: true,
                    layout: "Silverstone Bridge GP",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.06932,
                        longitude: -1.02246),
                    timingLineRight: LatLng(
                        latitude: 52.06910,
                        longitude: -1.02202),
                    geofenceLocation: LatLng(
                        latitude: 52.06922,
                        longitude: -1.02226)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Snetterton
        TrackLocation(
            name: "Snetterton",
            layouts: 1,
            tracks: [Track(
                trackInformation: TrackInformation(
                    name: "Snetterton",
                    place: "Snetterton, Norfolk",
                    length: 1.952,
                    turns: 7,
                    isCircuit: true,
                    layout: "Snetterton Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 52.46325,
                        longitude: 0.94480),
                    timingLineRight: LatLng(
                        latitude: 52.46356,
                        longitude: 0.94477),
                    geofenceLocation: LatLng(
                        latitude: 52.46343,
                        longitude: 0.94491)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))]),
        //Thruxton
        TrackLocation(
            name: "Thruxton",
            layouts: 1,
            tracks: [ Track(
                trackInformation: TrackInformation(
                    name: "Thruxton",
                    place: "Thruxton, Hampshire",
                    length: 2.356,
                    turns: 11,
                    isCircuit: true,
                    layout: "Thruxton Main",
                    distanceFromUser: 0.0),
                timingInformation: TimingInformation(
                    timingLineLeft: LatLng(
                        latitude: 51.20759,
                        longitude: -1.60919),
                    timingLineRight: LatLng(
                        latitude: 51.20773,
                        longitude: -1.60876),
                    geofenceLocation: LatLng(
                        latitude: 51.20758,
                        longitude: -1.60894)),
                personalBestInformation: PersonalBestInformation(
                    bestLap: 0,
                    vMax: 0,
                    lapsCompleted: 0))])
    ]
}
