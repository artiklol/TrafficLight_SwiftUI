//
//  Elements.swift
//  TrafficLight(SwiftUI)
//
//  Created by Artem Sulzhenko on 05.10.2022.
//

import SwiftUI

struct Elements: View {
    
    var circleRed: some View{
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
    }
    
    var circleYellow: some View{
        Circle()
            .fill(.yellow)
            .frame(width: 100, height: 100)
    }
    
    var circleGreen: some View{
        Circle()
            .fill(.green)
            .frame(width: 100, height: 100)
    }
    
    var body: some View {
        VStack{
            circleRed
            circleYellow
            circleGreen    
        }
    }
    
}

struct Elements_Previews: PreviewProvider {
    static var previews: some View {
        Elements()
    }
}
