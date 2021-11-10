//
//  InitSamples.swift
//  SwiftUISamples
//
//  Created by Benjamin McEnulty on 11/9/21.
//

import SwiftUI

struct InitSamples: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitSamples_Previews: PreviewProvider {
    static var previews: some View {
        InitSamples(count: 55, fruit: .orange)
    }
}
