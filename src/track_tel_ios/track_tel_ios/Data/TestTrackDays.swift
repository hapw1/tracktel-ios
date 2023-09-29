//
//  TestTrackDays.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 19/02/2023.
//

import Foundation

extension TrackDay {
    static let allTrackDays: [TrackDay] = [
    TrackDay(
        trackName: "Silverstone Circuit",
        date: Date(),
        sessions: [
            Session(
                time: Date(),
                bestLap: 151.563,
                averageLap: 156.764,
                laps: [151.563, 157.654, 159.000, 154.000, 153.000, 167.000, 152.000, 157.000, 159.000, 154.000],
                vMax: 143.0),
            Session(
                time: Date(),
                bestLap: 151.000,
                averageLap: 156.000,
                laps: [151.563, 157.654, 159.000, 154.000, 153.000, 167.000, 152.000, 157.000, 159.000, 154.000],
                vMax: 143.0),
            Session(
                time: Date(),
                bestLap: 151.000,
                averageLap: 156.000,
                laps: [151.563, 157.654, 159.000, 154.000, 153.000, 167.000, 152.000, 157.000, 159.000, 154.000],
                vMax: 143.0)]
    ),
    TrackDay(
        trackName: "Donington Park",
        date: Date(),
        sessions: [
            Session(
                time: Date(),
                bestLap: 129.000,
                averageLap: 136.000,
                laps: [129.000, 131.000, 134.000, 129.000, 138.000, 164.000, 134.000, 129.000],
                vMax: 127.0),
            Session(
                time: Date(),
                bestLap: 129.000,
                averageLap: 136.000,
                laps: [129.000, 131.000, 134.000, 129.000, 138.000, 164.000, 134.000, 129.000],
                vMax: 127.0),
            Session(
                time: Date(),
                bestLap: 129.000,
                averageLap: 136.000,
                laps: [129.000, 131.000, 134.000, 129.000, 138.000, 164.000, 134.000, 129.000],
                vMax: 127.0)]
    ),
    TrackDay(
        trackName: "Oulton Park",
        date: Date(),
        sessions: [
            Session(
                time: Date(),
                bestLap: 106.000,
                averageLap: 109.000,
                laps: [107.000, 109.000, 106.000, 110.000, 111.000],
                vMax: 117.0),
            Session(
                time: Date(),
                bestLap: 106.000,
                averageLap: 109.000,
                laps: [107.000, 109.000, 106.000, 110.000, 111.000],
                vMax: 117.0),
            Session(
                time: Date(),
                bestLap: 106.000,
                averageLap: 109.000,
                laps: [107.000, 109.000, 106.000, 110.000, 111.000],
                vMax: 117.0)]
    ),]
}
