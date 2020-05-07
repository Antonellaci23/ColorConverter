//
//  RBGtoHEX.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 07/04/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct RGBView: View {
    
    var pickerR: [Int] = Array ( 0...255)
    var stringR = (0...255).map(String.init)
    @State var selectR = 0
    var pickerG: [Int] = Array (0...255)
    var stringG = (0...255).map(String.init)
    @State var selectG = 0
    var pickerB: [Int] = Array (0...255)
    var stringB = (0...255).map(String.init)
    @State var selectB = 0
    
    var divideR: String {
        let numR: Int = selectR / 16
        let strR = String(numR, radix: 16)
        return(strR)
    }
    var restoR: String {
        let numRR: Int = selectR % 16
        let strRR = String(numRR, radix: 16)
        return(strRR)
    }
    
    var divideG: String {
        let numG: Int = selectG / 16
        let strG = String(numG, radix: 16)
        return(strG)
    }
    var restoG: String {
        let numGG: Int = selectG % 16
        let strGG = String(numGG, radix: 16)
        return(strGG)
    }
    
    var divideB: String {
        let numB: Int = selectB / 16
        let strB = String(numB, radix: 16)
        return(strB)
    }
    var restoB: String {
        let numBB: Int = selectB % 16
        let strBB = String(numBB, radix: 16)
        return(strBB)
    }
    
    var C: String {
        let r1 = Double(selectR)/255
        let g1 = Double (selectG)/255
        let b1 = Double (selectB)/255
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
        let r1 = Double(selectR)/255
        let g1 = Double (selectG)/255
        let b1 = Double (selectB)/255
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
        let r1 = Double(selectR)/255
        let g1 = Double (selectG)/255
        let b1 = Double (selectB)/255
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
        let r1 = Float(selectR)/255
        let g1 = Float (selectG)/255
        let b1 = Float (selectB)/255
        let k = (max(max(r1, g1), b1))
        let k1 = 1-k
        let intK = Int((k1*100).rounded())
        let strK = String (intK)
        return (strK)
    }
    
    var body: some View {
        ScrollView{
            VStack {
                
                HStack{
                    Spacer()
                    Text("R")
                        .foregroundColor(Color.red)
                    Spacer()
                    Spacer()
                    Text("G")
                        .foregroundColor(Color.green)
                    Spacer()
                    Spacer()
                    Text("B")
                        .foregroundColor(Color.blue)
                    Spacer()
                }
                HStack {
                    Picker(selection: $selectR, label: Text("")) {
                        ForEach(0 ..< pickerR.count) {
                            Text(self.stringR[$0])
                        }
                    }
                    .frame(height: 100.0)
                    .colorMultiply(Color.red)
                    Picker(selection: $selectG, label: Text("")) {
                        ForEach(0 ..< pickerG.count) {
                            Text(self.stringG[$0])
                        }
                    }
                    .frame(height: 100.0)
                    .colorMultiply(Color.green)
                    Picker(selection: $selectB, label: Text("")) {
                        ForEach(0 ..< pickerB.count) {
                            Text(self.stringB[$0])
                        }
                    }
                    .frame(height: 100.0)
                    .colorMultiply(Color.blue)
                }
                Spacer()
                Spacer()
                VStack{
                    Text("RGB \(selectR),\(selectG),\(selectB)")
                    
                    Text("HEX #\(divideR)\(restoR)\(divideG)\(restoG)\(divideB)\(restoB)")
                    Text("CMYK \(C),\(M),\(Y),\(K)")
                }
                Spacer()
                Rectangle()
                    
                    .fill(Color(red: Double(selectR) / 255, green:  Double(selectG) / 255, blue:  Double(selectB) / 255))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .bottom)
                    .cornerRadius(10)
            }
            .navigationBarTitle("Color Converter")
        }
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView()
    }
}
