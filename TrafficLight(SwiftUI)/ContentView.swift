//
//  ContentView.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Sulzhenko on 05.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var opacityRed = 0.3
    @State var opacityYellow = 0.3
    @State var opacityGreen = 0.3
    @State var textButton = "START"
    @State var isHiddenStopButton = 0.0
    
    var body: some View {
        
        let buttonStart = Button("\(textButton)", action: changeOpacity)
            .font(.title)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 20)
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(10)
        
        let buttonStop = Button("Stop", action: stopButtonPressed)
            .font(.title)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 30.0)
            .padding(.vertical, 5)
            .foregroundColor(.white)
            .background(Color.pink)
            .cornerRadius(10)
            .opacity(isHiddenStopButton)
        
        HStack{
            VStack{
                Spacer()
                Elements().circleRed
                    .opacity(opacityRed)
                Elements().circleYellow
                    .opacity(opacityYellow)
                Elements().circleGreen
                    .opacity(opacityGreen)
                Spacer()
                buttonStart
                buttonStop
                Spacer()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.black)
    }
    
    func changeOpacity(){
        
        if opacityRed == 0.3 && opacityYellow == 0.3 && opacityGreen == 0.3 {
            opacityRed = 1
            textButton = "NEXT"
            isHiddenStopButton = 1
        } else if opacityRed == 1 {
            opacityRed = 0.3
            opacityYellow = 1
            textButton = "NEXT"
        } else if opacityYellow == 1 {
            opacityYellow = 0.3
            opacityGreen = 1
            textButton = "NEXT"
        } else {
            opacityGreen = 0.3
            opacityRed = 1
        }
    }
    
    func stopButtonPressed(){
        opacityRed = 0.3
        opacityYellow = 0.3
        opacityGreen = 0.3
        isHiddenStopButton = 0
        textButton = "START"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
