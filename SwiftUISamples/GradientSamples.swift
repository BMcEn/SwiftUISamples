//
//  GradientSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/5/21.
//

import SwiftUI

struct GradientSamples: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
            .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        center: .topLeading,
                        startRadius: 1,
                        endRadius: 400)
                )
                .frame(width: 300, height: 200)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        center: .topLeading,
                        angle: .degrees(180+45))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientSamples_Previews: PreviewProvider {
    static var previews: some View {
        GradientSamples()
    }
}
