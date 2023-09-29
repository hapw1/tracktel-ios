//
//  ContentView.swift
//  speedo_spikework
//
//  Created by Harry Witcomb on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Home: View{
    
    @State var progress : CGFloat = 62.5
    @State var units : String = "MPH"
    
    let speeds: [Int] = [10, 20, 30, 40, 50, 60, 55, 45, 35, 25, 30, 35]

    var body: some View{
        VStack{
            Spacer()
            Meter(progress: $progress)
            
            Text("\(progress)")
            Text("\(units)")
            Spacer()
            Button{
                increaseSpeed()
            } label: {
                Text("Increase Speed")
            }
            Button{
                decreaseSpeed()
            } label: {
                Text("Descrease Speed")
            }
            Button{
                if units == "MPH"{
                    units = "KPH"
                }else {
                    units = "MPH"
                }
            }label: {
                Text("Change Units")
            }
            Button{
                changeSpeed()
            } label: {
                Text("Simulate Drive")
            }
            Spacer()
        }
        
    }
    
    func increaseSpeed() -> Void{
        self.progress += 1
    }
    func decreaseSpeed() -> Void{
        self.progress -= 1
    }
    func changeSpeed(){
        for speed in speeds{
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0){
                self.progress = CGFloat(speed)
            }
        }
    }
    
}





struct Meter: View {
    
    let greys = [Color.gray]
    let blues = [Color.blue]
    let reds = [Color.red]
    let greens = [Color.green]
    let pinks = [Color.pink]
    let purples = [Color.purple]
    let yellows = [Color.yellow]
    let cyans = [Color.cyan]
    let browns = [Color.brown]
    let indigos = [Color.indigo]
    let mints = [Color.mint]
    let oranges = [Color.orange]
    let teals = [Color.teal]
    let greys2 = [Color.gray]
    let blues2 = [Color.blue]
    let reds2 = [Color.red]

    @Binding var progress : CGFloat
    
    let speeds: [CGFloat] = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160]
    let speeds2: [CGFloat] = [160, 150, 140, 130, 120, 110, 100, 90, 80, 70, 60, 50, 40, 30, 20, 10]
    let colors = [[Color.gray], [.blue], [.red], [.green], [.pink], [.purple], [.yellow], [.cyan], [.brown], [.indigo], [.mint], [.orange], [.teal], [.gray], [.blue], [.red]]
    let colors2 = [Color.gray]
    var body: some View{
        ZStack{
            
            HStack{
                ZStack{
                    
                    ZStack{
                        Image("SpeedoUnits")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding()
                    .rotationEffect(Angle(degrees: 235))
                    Circle()
                        .trim(from: 0, to: 0.8)
                        .stroke(Color.black.opacity(0.1), lineWidth: 20)
                        .frame(width: 320, height: 320)
                    Circle()
                        .trim(from: 0, to: self.setProgress(speed: self.progress))
                        .stroke(AngularGradient(gradient: .init(colors: self.colors2), center: .center, angle: .init(degrees: 180)), lineWidth: 20)
                        .frame(width: 320, height: 320)
                    
                    
                    
                }
                .rotationEffect(Angle(degrees: 125))
            }
        }
        .padding(.bottom, -140)
    }
    
    func setProgress(speed: CGFloat) -> CGFloat{
        let temp = speed / 2
        return Double(temp * 0.01)
    }
}
