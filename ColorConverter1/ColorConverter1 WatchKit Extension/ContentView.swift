//
//  ContentView.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 30/03/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            NavigationLink(destination: RGBView()) {
                Text("RGB to HEX")
            }
            Spacer()
            NavigationLink(destination: HexView()) {
                Text("HEX to RGB")
            }
            Spacer()
                      NavigationLink(destination: CmykView()) {
                          Text("CMYK to RGB")
                      }
            }
        .navigationBarTitle("Color Converter")
        .frame(height: 100.0)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//        ContentView().previewDevice("Apple Watch Series 3 - 38mm").previewDisplayName("38mm")
//        ContentView().previewDevice("Apple Watch Series 4 - 40mm").previewDisplayName("40mm")
        ContentView().previewDevice("Apple Watch Series 4 - 42mm").previewDisplayName("42mm")
        ContentView().previewDevice("Apple Watch Series 4 - 44mm").previewDisplayName("44mm")
        }
    }
}
