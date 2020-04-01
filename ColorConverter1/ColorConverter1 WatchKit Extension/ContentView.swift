//
//  ContentView.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 30/03/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var settingView = false
    
    var body: some View {
        //        RGBView(buttonExit: $settingView)
        //        VStack {
        //            if self.settingView {
        //                RGBView(buttonExit: $settingView)
        //
        //            } else if self.settingView {
        //                HexView(button2: $settingView)
        //
        //            } else {
        //             FirstView(buttonClick: $settingView)
        //            }
        //        }
        HexView(button2: $settingView)
    }
}

struct FirstView: View {
    @Binding var buttonClick: Bool
    
    var body: some View {
        VStack {
            
            Text ("Color Converter")
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Button(action: { withAnimation { self.buttonClick.toggle()}}) {
                Text("RGB to HEX")
            }
            Button(action: {withAnimation {self.buttonClick.toggle()}}) {
                Text("HEX to RGB")
            }
            Spacer()
            Spacer()
        }
    }
}

struct RGBView: View{
    @Binding var buttonExit: Bool
    
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
            HStack {
                Button(action: {
                    withAnimation {
                        self.buttonExit.toggle()
                    }
                }) {
                    Text("< Color Converter").font(.footnote).colorMultiply(Color.white)
                }.buttonStyle(PlainButtonStyle())
                Spacer()
                Spacer()
                
            }
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
        
    }
    
}

struct MultiPicker: View  {
    
    typealias Label = String
    typealias Entry = String
    
    let data: [ (Label, [Entry]) ]
    @Binding var selection: [Entry]
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                ForEach(0..<self.data.count) { column in
                    Picker(self.data[column].0, selection: self.$selection[column]) {
                        ForEach(0..<self.data[column].1.count) { row in
                            Text(verbatim: self.data[column].1[row])
                                .tag(self.data[column].1[row])
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width / CGFloat(self.data.count), height: geometry.size.height)
                    .clipped()
                }
            }
        }
    }
}

struct HexView: View {
    
    
    @Binding var button2: Bool
    
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
            HStack {
                Button(action: {
                    withAnimation {
                        self.button2.toggle()
                    }
                }) {
                    Text("< Color Converter").font(.footnote).colorMultiply(Color.white)
                }.buttonStyle(PlainButtonStyle())
                Spacer()
                Spacer()
                
            }
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
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
