//
//  ShapeSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/3/21.
//

import SwiftUI

struct ShapeSamples: View {
    var body: some View {
        VStack {
            Circle()
                //Make an outline of this shape
                .stroke(Color.orange,
                        style: StrokeStyle(lineWidth: 4,
                                        lineCap: .round,
                                        dash: [10]))
            
            Ellipse()
                .fill(Color.orange)
                .shadow(radius: 15)
            
            Capsule(style: .circular)
                .foregroundColor(Color.red)
            
            Rectangle()
                .shadow(radius: 8)
            
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 0.8)
        }
    }
}

struct ShapeSamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeSamples()
    }
}
