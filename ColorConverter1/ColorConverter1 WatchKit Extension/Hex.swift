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
    
    
    var resto1: String {
        let num1: Int = select1 % 16
        let str1 = String(num1, radix: 16)
        return(str1)
    }
    var resto2: String {
        let num2: Int = select2 % 16
        let str2 = String(num2, radix: 16)
        return(str2)
    }
    var resto3: String {
        let num3: Int = select3 % 16
        let str3 = String(num3, radix: 16)
        return(str3)
    }
    var resto4: String {
        let num4: Int = select4 % 16
        let str4 = String(num4, radix: 16)
        return(str4)
    }
    var resto5: String {
        let num5: Int = select5 % 16
        let str5 = String(num5, radix: 16)
        return(str5)
    }
    var resto6: String {
        let num6: Int = select6 % 16
        let str6 = String(num6, radix: 16)
        return(str6)
    }
    
    var colorR: Int? {
        let strR: String = R
        let numR = Int(strR, radix: 10)
        return(numR)
    }
    
    var colorG: Int? {
        let strG: String = G
        let numG = Int(strG, radix: 10)
        return(numG)
    }
    
    var colorB: Int? {
        let strB: String = B
        let numB = Int(strB, radix: 10)
        return(numB)
    }
    
    var C: String {
        let r1 = Double(colorR!)/255
        let g1 = Double (colorG!)/255
        let b1 = Double (colorB!)/255
        let k = 1-(max(max(r1, g1), b1))
        var numC = ((1-r1-k)/(1-k))
        if (1-k == 0) {
            numC = 0
        }
        let roundedC = Int((numC*100).rounded())
        let strC = String (roundedC)
        return (strC)
    }
    var M: String {
        let r1 = Double(colorR!)/255
        let g1 = Double (colorG!)/255
        let b1 = Double (colorB!)/255
        let k = 1-(max(max(r1, g1), b1))
        var numM = ((1-g1-k)/(1-k))
        if (1-k == 0) {
            numM = 0
        }
        let roundedM = Int((numM*100).rounded())
        let strM = String (roundedM)
        return (strM)
    }
    
    var Y: String {
        let r1 = Double(colorR!)/255
        let g1 = Double (colorG!)/255
        let b1 = Double (colorB!)/255
        let k = 1-(max(max(r1, g1), b1))
        var numY = ((1-b1-k)/(1-k))
        if (1-k == 0) {
            numY = 0
        }
        let roundedY = Int((numY*100).rounded())
        let strY = String (roundedY)
        return (strY)
    }
    var K: String {
        let r1 = Double(colorR!)/255
        let g1 = Double (colorG!)/255
        let b1 = Double (colorB!)/255
        let k = (max(max(r1, g1), b1))
        let k1 = 1-k
        let intK = Int((k1*100).rounded())
        let strK = String (intK)
        return (strK)
    }
    
    var body: some View {
        ScrollView(.vertical){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    Picker(selection: $select1, label: Text("")) {
                        ForEach(0 ..< picker1.count) {
                            Text(self.string1[$0])
                                .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                    
                    Picker(selection: $select2, label: Text("")) {
                        ForEach(0 ..< picker2.count) {
                            Text(self.string2[$0])
                            .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                    
                    Picker(selection: $select3, label: Text("")) {
                        ForEach(0 ..< picker3.count) {
                            Text(self.string3[$0]).font(.footnote)
                            .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                    
                    Picker(selection: $select4, label: Text("")) {
                        ForEach(0 ..< picker4.count) {
                            Text(self.string4[$0]).font(.footnote)
                            .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                    
                    Picker(selection: $select5, label: Text("")) {
                        ForEach(0 ..< picker5.count) {
                            Text(self.string5[$0]).font(.footnote)
                            .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                    
                    Picker(selection: $select6, label: Text("")) {
                        ForEach(0 ..< picker6.count) {
                            Text(self.string6[$0]).font(.footnote)
                            .font(.title)
                        }
                    }
                    .frame(width: 80, height: 100.0)
                }
            }
            VStack(){
                Text("HEX #\(resto1)\(resto2)\(resto3)\(resto4)\(resto5)\(resto6)")
                HStack {
                    Text("RGB \(R),\(G),\(B)")
                }
                Text("CMYK \(C),\(M),\(Y),\(K)")
                Spacer()
                Spacer()
                Text("Color Preview")
            }
            Rectangle()
                .fill(Color(red: Double(colorR!) / 255, green:  Double(colorG!) / 255, blue: Double(colorB!) / 255))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 140, maxHeight: .infinity, alignment: .bottom)
                .cornerRadius(10)
                
                .padding(.top)
                .frame(height: 350)
        }
        .navigationBarTitle("Color Converter")
    }
}

struct HexView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HexView().previewDevice("Apple Watch Series 3 - 38mm").previewDisplayName("38mm")
            HexView().previewDevice("Apple Watch Series 4 - 40mm").previewDisplayName("40mm")
            HexView().previewDevice("Apple Watch Series 4 - 42mm").previewDisplayName("42mm")
            HexView().previewDevice("Apple Watch Series 4 - 44mm").previewDisplayName("44mm")
        }
        
    }
}
