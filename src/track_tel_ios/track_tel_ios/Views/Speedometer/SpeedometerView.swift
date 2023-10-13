//
//  SpeedometerView.swift
//  track_tel_ios
//
//  Created by Harry Witcomb on 15/02/2023.
//

import SwiftUI
import CoreLocation

//Device orientation detection code found at https://medium.com/devtechie/detect-device-orientation-in-swiftui-6521a67712ec

struct DetectOrientation: ViewModifier {
    @Binding var orientation: UIDeviceOrientation
    
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)){ _ in
                orientation = UIDevice.current.orientation
            }
    }
}

extension View {
    func detectOrientation( _ orientation: Binding<UIDeviceOrientation>) -> some View {
        modifier(DetectOrientation(orientation: orientation))
    }
}

struct SpeedometerView: View {
    
    @State private var orientation = UIDevice.current.orientation
    @EnvironmentObject var locationDataManager: LocationDataManager
    
    

    var body: some View {
        
        
        ZStack{
            Color.expOffWhite.ignoresSafeArea()
            if orientation.isLandscape{
                SpeedometerLandscapeView(speed: locationDataManager.locationManager.location?.speed ?? 0)
            }else{
                SpeedometerPortraitView(
                    //speed: locationDataManager.locationManager.location?.speed ?? 0
                )
            }
            
        }
        .detectOrientation($orientation)
        
    }
}



struct SpeedometerLandscapeView: View{
    
    
    @State var units = false
    @State var speed: CLLocationSpeed = 0
    
    @EnvironmentObject var locationDataManager : LocationDataManager

    
    var body: some View{
        
        HStack(alignment: .center){
            Spacer()
            VStack(alignment: .center){
                SpeedStats(units: units)
                UnitsToggle(units: $units)

            }
            .padding()
            Spacer()
            VStack(alignment: .center){
                Speedometer(
                    //speed: locationDataManager.locationManager.location?.speed ?? 0 ,
                    units: $units)
                    .padding()
            }
            Spacer()
        }
    }
}

struct SpeedometerPortraitView: View {
    

    @State var units = false
    @State var sessionInProgress = false

    
    @EnvironmentObject var locationDataManager : LocationDataManager

    
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View{
        VStack{
            Spacer()
            Speedometer(
                units: $units)
            Spacer()
            InformationView(units: units)
                .padding()
            Spacer()
            UnitsToggle(units: $units)
            Spacer()
            Button(
                action: {
                    if sessionInProgress {
                        sessionInProgress = false
                        locationDataManager.locationManager.stopUpdatingLocation()
                        self.presentationMode.wrappedValue.dismiss()
                        
                    }else {
                        sessionInProgress = true
                        locationDataManager.locationManager.startUpdatingLocation()
                    }
                }, label: {
                    if sessionInProgress {
                        Text("Return to Home")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Capsule())
                        
                    }else {
                        Text("Start")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(Capsule())
                    }
                    
                })
        }
        .background(Color.white.ignoresSafeArea())
        .navigationBarBackButtonHidden(true)

        
    }

}

struct InformationView: View {
    let units: Bool
    var body: some View {
        HStack{
            Spacer()
            VStack{
                SpeedStats(units: units)
            }
            .padding()
            Spacer()
            VStack{
                DistanceStats(units: units)
            }
            .padding()
            Spacer()

        }
        .padding()
        .foregroundColor(.black)
        .background(Color.accentTeal.ignoresSafeArea().opacity(0.2))
        .cornerRadius(15)
        

        
        
    }
}

struct SpeedStats: View {
    
    let units: Bool
    @EnvironmentObject var locationDataManager : LocationDataManager

    @State var averageSpeed = 0.0
    @State var vMax = 0.0
    
    var body: some View {
        VStack(alignment: .center){
            let unitsToDisplay = units ? "KPH" : "MPH"
            let formattedAverage = convertSpeed(speed: locationDataManager.averageSpeed, units: units)
            let formattedVMax = convertSpeed(speed: locationDataManager.vMax, units: units)
            Text("\(Int(formattedAverage)) \(unitsToDisplay)")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("Average")
                .fontWeight(.ultraLight)
                .font(.subheadline)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
            Text("\(Int(formattedVMax)) \(unitsToDisplay)")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("VMax")
                .fontWeight(.ultraLight)
                .font(.subheadline)
        }
        .font(.system(size: 28))
    }
}

struct DistanceStats: View {
    let units: Bool
    
    @EnvironmentObject var locationDataManager : LocationDataManager

    @State var distanceTravelled = 0.0
    
    var body: some View {
        VStack(alignment: .center){
            let unitsToDisplay = units ? "KM" : "Miles"
            let formattedDistance = getFormattedDistance(distance: locationDataManager.distanceTravelled, units: units)
            Text("\(formattedDistance) \(unitsToDisplay)")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("Distance")
                .fontWeight(.ultraLight)
                .font(.subheadline)
        }
    }
}



struct UnitsToggle: View {
    @Binding var units : Bool
    var body: some View {
        VStack(alignment: .trailing){
            let unit = units ? "KPH" : "MPH"
            Toggle(unit, isOn: $units)
                .padding()
                .frame(maxWidth: 130.0)
        }
    }
}


