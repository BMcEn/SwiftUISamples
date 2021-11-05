//
//  IconSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/5/21.
//

import SwiftUI

struct IconSamples: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                //Change icon size directly
                .font(.system(size: 100))
                .foregroundColor(Color.red)
            
            Image(systemName: "heart.fill")
                //Change size to match frame
                .resizable()
                .scaledToFit()
                .foregroundColor(.green)
                .frame(width: 300, height: 300)
            
            //Multicolor icon
            Image(systemName: "person.fill.badge.plus")
                //Required modifier to show multiple colors
                .renderingMode(.original)
                .font(.system(size: 100))
        }
    }
}

struct IconSamples_Previews: PreviewProvider {
    static var previews: some View {
        IconSamples()
    }
}
