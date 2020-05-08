//
//  Cmyk.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 06/05/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//


import SwiftUI

struct CmykView: View {
    
    var pickerC: [Int] = Array ( 0...100)
    var stringC = (0...100).map(String.init)
    @State var selectC = 0
    var pickerM: [Int] = Array (0...100)
    var stringM = (0...100).map(String.init)
    @State var selectM = 0
    var pickerY: [Int] = Array (0...100)
    var stringY = (0...100).map(String.init)
    @State var selectY = 0
    var pickerK: [Int] = Array (0...100)
    var stringK = (0...100).map(String.init)
    @State var selectK = 0
    
    var R: String {
        let numC =  (255*(1-(Float(selectC) / 100))*(1-(Float(selectK) / 100)))
        let roundedC = Int(numC.rounded(.up))
        let strC = String (roundedC)
        return (strC)
    }
    var G: String {
        let numM = (255*(1-(Float(selectM) / 100))*(1-(Float(selectK) / 100)))
        let roundedM = Int(numM.rounded(.up))
        let strM = String (roundedM)
        return (strM)
    }
    var B: String {
        let numY = (255*(1-(Float(selectY) / 100))*(1-(Float(selectK) / 100)))
        let roundedY = Int(numY.rounded(.up))
        let strM = String (roundedY)
        return (strM)
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
    
    var divideR: String {
        let numR: Int = colorR! / 16
        let strR = String(numR, radix: 16)
        return(strR)
    }
    var restoR: String {
        let numRR: Int = colorR! % 16
        let strRR = String(numRR, radix: 16)
        return(strRR)
    }
    
    var divideG: String {
        let numG: Int = colorG! / 16
        let strG = String(numG, radix: 16)
        return(strG)
    }
    var restoG: String {
        let numGG: Int = colorG! % 16
        let strGG = String(numGG, radix: 16)
        return(strGG)
    }
    
    var divideB: String {
        let numB: Int = colorB! / 16
        let strB = String(numB, radix: 16)
        return(strB)
    }
    var restoB: String {
        let numBB: Int = colorB! % 16
        let strBB = String(numBB, radix: 16)
        return(strBB)
    }
    
    var body: some View {
        ScrollView(.vertical){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack{
                        Text("C")
                        Picker(selection: $selectC, label: Text("")) {
                            ForEach(0 ..< pickerC.count) {
                                Text(self.stringC[$0])
                                    .font(.title)
                            }
                        }
                        .frame(width: 80, height: 100.0)
                    }
                    .colorMultiply(Color(red: 0 / 255, green:  255 / 255, blue: 255 / 255))
                    VStack{
                        Text("M")
                        Picker(selection: $selectM, label: Text("")) {
                            ForEach(0 ..< pickerM.count) {
                                Text(self.stringM[$0])
                                .font(.title)
                            }
                        }
                        .frame(width: 80, height: 100.0)
                    } 
                    .colorMultiply(Color(red: 255 / 255, green: 0 / 255, blue: 255 / 255))
                    
                    VStack{
                        Text("Y")
                        Picker(selection: $selectY, label: Text("")) {
                            ForEach(0 ..< pickerY.count) {
                                Text(self.stringY[$0])
                                .font(.title)
                            }
                        }
                        .frame(width: 80, height: 100.0)
                    }
                    .colorMultiply(Color(red: 255 / 255, green: 255 / 255, blue: 0 / 255))
                    VStack{
                        Text("K")
                        Picker(selection: $selectK, label: Text("")) {
                            ForEach(0 ..< pickerK.count) {
                                Text(self.stringK[$0])
                                .font(.title)
                            }
                        }
                        .frame(width: 80, height: 100.0)
                    }
                    .colorMultiply(Color.white)
                }
            }

            VStack{
                Text("CMYK \(selectC),\(selectM),\(selectY),\(selectK)")
                Text("RGB \(R), \(G), \(B)")
                Text("HEX #\(divideR)\(restoR)\(divideG)\(restoG)\(divideB)\(restoB)")
                Spacer()
                Spacer()
                Text("Color Preview")
            }
            Rectangle()
                .fill(Color(red: Double(colorR!) / 255, green:  Double(colorG!) / 255, blue: Double(colorB!) / 255))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 140, maxHeight: .infinity, alignment: .bottom)
                .cornerRadius(10)
        }
        .navigationBarTitle("Color Converter")
        
    }
}

struct CmykView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CmykView().previewDevice("Apple Watch Series 3 - 38mm").previewDisplayName("38mm")
            CmykView().previewDevice("Apple Watch Series 4 - 40mm").previewDisplayName("40mm")
            CmykView().previewDevice("Apple Watch Series 4 - 42mm").previewDisplayName("42mm")
            CmykView().previewDevice("Apple Watch Series 4 - 44mm").previewDisplayName("44mm")
        }
        
    }
}

