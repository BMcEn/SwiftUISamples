//
//  GridSample.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/11/21.
//

import SwiftUI


//Instagram-like page
struct GridSample: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { _ in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
        
    }
}

struct GridSample_Previews: PreviewProvider {
    static var previews: some View {
        GridSample()
    }
}
