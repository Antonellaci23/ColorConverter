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
    
    
    var body: some View {
        
        VStack {
         
            Spacer()
            Spacer()
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
                .colorMultiply(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Color@*/.red/*@END_MENU_TOKEN@*/)
                Picker(selection: $selectG, label: Text("")) {
                    ForEach(0 ..< pickerG.count) {
                        Text(self.stringG[$0])
                    }
                }
                .colorMultiply(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Color@*/.green/*@END_MENU_TOKEN@*/)
                Picker(selection: $selectB, label: Text("")) {
                    ForEach(0 ..< pickerB.count) {
                        Text(self.stringB[$0])
                    }
                }
                .colorMultiply(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Color@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            Spacer()
            HStack {
                Text("#\(divideR)\(restoR)\(divideG)\(restoG)\(divideB)\(restoB)")
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle("Color Converter")
        
    }
}


struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
       RGBView()
        
    }
}
