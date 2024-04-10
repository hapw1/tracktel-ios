//
//  AllTracks.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 17/02/2023.
//

import Foundation
import CoreLocation

extension Track {
    static let allTracks: [Track] = [
        Track(
            trackInformation: TrackInformation(
                name: "Abingdon Park",
                place: "Nottingham, Leicestershire",
                length: 1.8,
                turns: 8,
                isCircuit: true,
                layout: "abingdonimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Anglesey Circuit",
                place: "Anglesey, North Wales",
                length: 2.1,
                turns: 10,
                isCircuit: true,
                layout: "angleseycircuitimage",
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
                name: "Bedford Autodrome",
                place: "Thurleigh, Bedfordshire",
                length: 1.7,
                turns: 0,
                isCircuit: true,
                layout: "bedfordautodromeimage",
                distanceFromUser: 0.0),
            timingInformation: TimingInformation(
                timingLineLeft: LatLng(
                    latitude: 52.23530,
                    longitude: -0.47447),
                timingLineRight: LatLng(
                    latitude: 52.23503,
                    longitude: -0.47414),
                geofenceLocation: LatLng(
                    latitude: 52.23511,
                    longitude: -0.47436)),
            personalBestInformation: PersonalBestInformation(
                bestLap: 0,
                vMax: 0,
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Blyton Park",
                place: "Gainsborough, Lincolnshire",
                length: 1.6,
                turns: 9,
                isCircuit: true,
                layout: "blytonparkimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Brands Hatch",
                place: "Longfield, Kent",
                length: 1.2,
                turns: 6,
                isCircuit: true,
                layout: "brandshatchimage",
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
                name: "Cadwell Park",
                place: "Louth, Lincolnshire",
                length: 2.173,
                turns: 11,
                isCircuit: true,
                layout: "cadwellparkimage",
                distanceFromUser: 0.0),
            timingInformation: TimingInformation(
                timingLineLeft: LatLng(
                    latitude: 53.31021,
                    longitude: 0.05925),
                timingLineRight: LatLng(
                    latitude: 53.31032,
                    longitude: 0.05965),
                geofenceLocation: LatLng(
                    latitude: 53.31032,
                    longitude: 0.05943)),
            personalBestInformation: PersonalBestInformation(
                bestLap: 0,
                vMax: 0,
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Castle Combe",
                place: "Castle Combe, Wiltshire",
                length: 1.198,
                turns: 6,
                isCircuit: true,
                layout: "castlecombeimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Croft",
                place: "Dalton-on-Tees, North Yorkshire",
                length: 2.127,
                turns: 10,
                isCircuit: true,
                layout: "croftcircuitimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Donington Park",
                place: "Nottingham, Leicestershire",
                length: 2.5,
                turns: 9,
                isCircuit: true,
                layout: "doningtonparkimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Goodwood",
                place: "Goodwood, Chichester",
                length: 2.367,
                turns: 9,
                isCircuit: true,
                layout: "goodwoodcircuitimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Kirkistown",
                place: "Kirkistown, Northern Ireland",
                length: 1.5,
                turns: 0,
                isCircuit: true,
                layout: "kirkistownimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Knockhill",
                place: "Fife, Scotland",
                length: 1.3,
                turns: 8,
                isCircuit: true,
                layout: "knockhillimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Lydden Hill",
                place: "Denton-on-Wooton, Kent",
                length: 1,
                turns: 7,
                isCircuit: true,
                layout: "lyddenhillimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Mallory Park",
                place: "Kirkby Mallory, Leicester",
                length: 1.198,
                turns: 6,
                isCircuit: true,
                layout: "malloryparkimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Mondello Park",
                place: "County Kildare, Northern Ireland",
                length: 2.268,
                turns: 13,
                isCircuit: true,
                layout: "mondelloparkimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Oultan Park",
                place: "Little Budworth, Cheshire",
                length: 2.692,
                turns: 8,
                isCircuit: true,
                layout: "oultanparkimage",
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
                name: "Prescott Hill Climb",
                place: "Cheltenham, Gloucestershire",
                length: 0.64,
                turns: 8,
                isCircuit: false,
                layout: "prescotthillclimbimage",
                distanceFromUser: 0.0),
            timingInformation: TimingInformation(
                timingLineLeft: LatLng(
                    latitude: 51.96309,
                    longitude: -2.02383),
                timingLineRight: LatLng(
                    latitude: 51.96315,
                    longitude: -2.02415),
                geofenceLocation: LatLng(
                    latitude: 51.96311,
                    longitude: -2.02400)),
            personalBestInformation: PersonalBestInformation(
                bestLap: 0,
                vMax: 0,
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Silverstone Circuit",
                place: "Banbury, Oxfordshire",
                length: 3.67,
                turns: 18,
                isCircuit: true,
                layout: "silverstonecircuitimage",
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
                name: "Snetterton",
                place: "Snetterton, Norfolk",
                length: 1.952,
                turns: 7,
                isCircuit: true,
                layout: "snettertonimage",
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
                lapsCompleted: 0)),
        Track(
            trackInformation: TrackInformation(
                name: "Thruxton",
                place: "Thruxton, Hampshire",
                length: 2.356,
                turns: 11,
                isCircuit: true,
                layout: "thruxtonimage",
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
                lapsCompleted: 0))
    ]
}
