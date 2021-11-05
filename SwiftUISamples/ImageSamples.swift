//
//  ImageSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/5/21.
//

import SwiftUI

struct ImageSamples: View {
    var body: some View {
        //Drag and drop image into assets folder
        Image("Doge")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 200)
            .clipShape(
                Circle()
            )
    }
}

struct ImageSamples_Previews: PreviewProvider {
    static var previews: some View {
        ImageSamples()
    }
}
