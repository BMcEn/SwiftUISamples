//
//  ColorSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/3/21.
//

import SwiftUI

struct ColorSamples: View {
    var body: some View {
        
        VStack(spacing: 24) {
            RoundedRectangle(cornerRadius: 25)
                //.primary color automatically changes based on light/dark mode
                .fill(Color.primary)
                .frame(width: 300, height: 200)
            
            //Light gray color, changes in light/dark
            Color(UIColor.secondarySystemBackground)
                .frame(width: 300, height: 200)
                .shadow(radius: 10)
            
            //Use color defined in Assets folder
            Color("CustomColor")
                .frame(width: 300, height: 200)
                .shadow(color: Color("CustomColor").opacity(0.7), radius: 10, x: -20, y: -20)
        }
    }
}

struct ColorSamples_Previews: PreviewProvider {
    static var previews: some View {
        ColorSamples()
        
        ColorSamples()
            .preferredColorScheme(.dark)
    }
}
