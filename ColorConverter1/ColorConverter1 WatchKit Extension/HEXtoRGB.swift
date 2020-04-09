//
//  HEXtoRGB.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 07/04/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct HexView: View {
    var picker1: [Int] = Array (0...15)
    var string1 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select1 = 0
    var picker2: [Int] = Array (0...15)
    var string2 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select2 = 0
    var picker3: [Int] = Array (0...15)
    var string3 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select3 = 0
    var picker4: [Int] = Array (0...15)
    var string4 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select4 = 0
    var picker5: [Int] = Array (0...15)
    var string5 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select5 = 0
    var picker6: [Int] = Array (0...15)
    var string6 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
    @State var select6 = 0
    
    var R: String {
        let num1 = select1
        _ = String(num1, radix: 10)
        let num2 = select2
        _ = String(num2, radix: 10)
        let value = String((num1*16) + num2)
        return(value)
    }
    
    var G: String {
        let num3 = select3
        _ = String(num3, radix: 10)
        let num4 = select4
        _ = String(num4, radix: 10)
        let value = String((num3*16) + num4)
        return(value)
    }
    
    var B: String {
        let num5 = select5
        _ = String(num5, radix: 10)
        let num6 = select6
        _ = String(num6, radix: 10)
        let value = String((num5*16) + num6)
        return(value)
    }
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
            HStack{
                Spacer()
                Text("HEX")
                Spacer()
            }
            HStack {
                Picker(selection: $select1, label: Text("")) {
                    ForEach(0 ..< picker1.count) {
                        Text(self.string1[$0]).font(.footnote)
                    }
                }
                Picker(selection: $select2, label: Text("")) {
                    ForEach(0 ..< picker2.count) {
                        Text(self.string2[$0]).font(.footnote)
                        
                    }
                }
                Picker(selection: $select3, label: Text("")) {
                    ForEach(0 ..< picker3.count) {
                        Text(self.string3[$0]).font(.footnote)
                    }
                }
                Picker(selection: $select4, label: Text("")) {
                    ForEach(0 ..< picker4.count) {
                        Text(self.string4[$0]).font(.footnote)
                    }
                }
                Picker(selection: $select5, label: Text("")) {
                    ForEach(0 ..< picker5.count) {
                        Text(self.string5[$0]).font(.footnote)
                    }
                }
                Picker(selection: $select6, label: Text("")) {
                    ForEach(0 ..< picker6.count) {
                        Text(self.string6[$0]).font(.footnote)
                    }
                }
            }
            Spacer()
            Spacer()
            HStack {
                Text("RGB")
                Text(R).foregroundColor(Color.red)
                Text(", ")
                Text(G).foregroundColor(Color.green)
                Text(", ")
                Text(B).foregroundColor(Color.blue)
            }
        }.navigationBarTitle("Color Converter")
    }
}


struct HexView_Previews: PreviewProvider {
    static var previews: some View {
        HexView()
        
    }
}
