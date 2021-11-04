//
//  ContentView.swift
//  SwiftUIWatchSamples WatchKit Extension
//
//  Created by Benjamin McEnulty on 11/2/21.
//

import SwiftUI

struct GaugeSample: View {
    
    var body: some View {
        VStack(spacing: 24) {
///            Extracting views from minimum/maximumValueLabel breaks Xcode
///            Gauge(value: 0.1, in: 0...1) { Text("EPI") }
///                  currentValueLabel: { CurrentValueView() }
///                  minimumValueLabel: { MinimumValueView() }
///                  maximumValueLabel: { MaximumValueView() }
///                  .gaugeStyle(CircularGaugeStyle(tint: Gradient(colors: [.green, .yellow, .orange, .red])))
            Text("Test")
            Gauge(value: 0.7, in: 0...1) {
                Text("Label")
            } currentValueLabel: {
                Text("0.7")
            } minimumValueLabel: {
                Text("EPINEPHRINE")
                    .foregroundColor(.blue)
            } maximumValueLabel: {
                Text("99")
                    .foregroundColor(.green)
            }
        }
    }
    
    //Extracted Views
    struct CurrentValueView: View {
        var body: some View {
            Image(systemName: "ivfluid.bag")
                .foregroundColor(.red)
        }
    }
    
    struct MinimumValueView: View {
        var body: some View {
            Text("0")
                .foregroundColor(.blue)
        }
    }
    
    struct MaximumValueView: View {
        var body: some View {
            Text("99")
                .foregroundColor(.green)
        }
    }
}

struct GaugeSample_Previews: PreviewProvider {
    static var previews: some View {
        GaugeSample()
    }
}
