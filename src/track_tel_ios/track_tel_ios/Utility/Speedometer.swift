//
//  SpeedoView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 16/02/2023.
//

import SwiftUI
import CoreLocation

struct Speedometer: View {
    let colors = [Color.swimShortBlue, Color.swimShortOrange]
    
    @Binding var units: Bool
    
    @EnvironmentObject var locationDataManager: LocationDataManager
    
    var body: some View {
        ZStack{
            HStack{
                ZStack{
                    Circle()
                        .trim(from: 0, to: 0.8)
                        .stroke(Color.black.opacity(0.1), lineWidth: 20)
                        .frame(width: 280, height: 280)
                    Circle()
                        .trim(from: 0, to: self.setSpeed(speed: convertSpeed(speed: locationDataManager.locationManager.location?.speed ?? 10, units: units)))
                        .stroke(AngularGradient(gradient: .init(colors: self.colors), center: .center, angle: .init(degrees: 180)), lineWidth: 20)
                        .frame(width: 280, height: 280)
                    VStack{
                        let unit = units ? "KPH" : "MPH"
                        let formattedSpeed = convertSpeed(speed: locationDataManager.speed, units: units)
                        Text("\(Int(formattedSpeed))")
                            .font(.largeTitle)
                            .fontWeight(.ultraLight)
                        Text(unit)
                            .font(.title)
                            .fontWeight(.ultraLight)
                    }
                    .rotationEffect(Angle(degrees: 235))

                }
                .rotationEffect(Angle(degrees: 125))
            }
        }
    }
    
    
    
    func setSpeed(speed: CLLocationSpeed) -> CGFloat{
        let temp = (speed) / 2
        return Double(temp * 0.01)
    }
}


