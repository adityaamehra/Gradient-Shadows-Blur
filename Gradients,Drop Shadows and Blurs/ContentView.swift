//
//  ContentView.swift
//  Gradients,Drop Shadows and Blurs
//
//  Created by Adityaa Mehra on 10/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack {
                //MARK:-Gradient Background
                LinearGradient(gradient: Gradient(stops: [.init(color: Color.red, location: 0), .init(color: Color.blue, location: 0.3),.init(color: Color.purple, location: 0.7)]),
                               startPoint: UnitPoint(x: 0.5, y: 0),
                               endPoint: UnitPoint(x: 0.5, y: 1)).ignoresSafeArea()
                VStack{
                    //MARK: -Shadow
                    Spacer()
                    ZStack{
                        //MARK:-Linear Gradient as button background
                        Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing)).frame(width:200 , height:40)
                        Text("Hello").foregroundColor(.white)
                    }.shadow(color: .black, radius: 10 , x: 5, y: 5)
                    Spacer()
                    //MARK:-Blur
                    ZStack{
                        Capsule().frame(width:200 , height:40).foregroundColor(.purple)
                        Text("Hello").foregroundColor(.white)
                    }.blur(radius: 5)
                    Spacer()
                    //MARK:-Radial Gradient as button background
                    ZStack{
                        Capsule().fill(RadialGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), center: .center, startRadius: 5, endRadius: 100)).frame(width:200 , height:40).foregroundColor(.purple)
                        Text("Hello").foregroundColor(.white)
                    }
                    Spacer()
                    //MARK:-Angular Gradient as button background
                    ZStack{
                        Capsule().fill(AngularGradient(gradient: Gradient(colors: [Color.green, Color.blue , Color.pink , Color.orange]), center: .center , startAngle: .degrees(34) , endAngle: .degrees(100))).frame(width:200 , height:40)
                        Text("Hello").foregroundColor(.white)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
