//
//  ContentView.swift
//  ColorConverter1 WatchKit Extension
//
//  Created by Antonella Cirma on 30/03/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var pickerR: [Int] = Array (0...255)
    var stringR = (0...255).map(String.init)
    @State var selectR = 0
      var pickerG: [Int] = Array (0...255)
      var stringG = (0...255).map(String.init)
    @State var selectG = 0
     var pickerB: [Int] = Array (0...255)
      var stringB = (0...255).map(String.init)
    @State var selectB = 0

        
    var divideR: Int {
        selectR / 16
    }
    var restoR: Int {
        selectR % 16
    }
     var divideG: Int {
         selectG / 16
     }
     var restoG: Int {
         selectG % 16
     }
    var divideB: Int {
          selectG / 16
      }
      var restoB: Int {
          selectG % 16
      }

        
        
        var body: some View {
            
            VStack {
                Text("R")
                HStack {
                    Picker(selection: $selectR, label: Text("")) {
                        ForEach(0 ..< pickerR.count) {
                            Text(self.stringR[$0])
                        }
                    }
                    Picker(selection: $selectG, label: Text("")) {
                        ForEach(0 ..< pickerG.count) {
                            Text(self.stringG[$0])
                        }
                    }
                    Picker(selection: $selectB, label: Text("")) {
                        ForEach(0 ..< pickerB.count) {
                            Text(self.stringB[$0])
                        }
                    }
                }
            }
    }
}
//                HStack {
//                    Spacer()
//                    if result <= 34 {
//                        Text("1/\(shutterSpeed[result])")
//                        Spacer()
//                    } else if 34..<shutterSpeed.count ~= result {
//    //                } else if result < shutterSpeed.count && result > 34 {
//                        Text("\(shutterSpeed[result])")
//                        Spacer()
//                    } else {
////                        Text("\(product.timeDisplay())")
//                            .multilineTextAlignment(.center)
//                        Spacer()
//                        if self.product < 7200 {
//                            Button(action: {
//                                self.showTimer.toggle()
//                            }) {
//                                Text("Timer")
//                            }
//                            .padding([.top, .bottom, .trailing])
//                            .frame(width: 80.0)
//                        }
//                    }
//                }
//                .frame(height: 60.0)
//    //            .background(Color(hex: 0xffffff, alpha: 0.07))
//                    .background(Color.backgroundColor)
//                    .cornerRadius(CGFloat(5.0))
//            }
//        }
//
//    }
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//
//    extension Color {
//        static func rgb(r: Double, g: Double, b: Double) -> (Color) {
//            return Color(red: r / 255, green: g / 255, blue: b / 255)
//        }
//        static let backgroundColor = Color.rgb(r: 21, g: 22, b: 33)
//        static let outlineColor = Color.rgb(r: 119, g: 16, b: 59)
//        static let threeColor = Color.rgb(r: 171, g: 22, b: 84)
//        static let tenColor = Color.rgb(r: 100, g: 150, b: 200)
//    //    static let tenColor = Color.rgb(r: 160, g: 210, b: 220)
//    //    static let tenColor = Color.rgb(r: 71, g: 161, b: 155)
//    //    static let outlineColor = Color.rgb(r: 54, g: 255, b: 203)
//        static let trackColor = Color.rgb(r: 45, g: 56, b: 95)
//        static let pulsatingColor = Color.rgb(r: 73, g: 113, b: 148)
//    }
//
//
//    extension Color {
//        init(hex: Int, alpha: Double = 1) {
//            let components = (
//                R: Double((hex >> 16) & 0xff) / 255,
//                G: Double((hex >> 08) & 0xff) / 255,
//                B: Double((hex >> 00) & 0xff) / 255
//            )
//            self.init(
//                .sRGB,
//                red: components.R,
//                green: components.G,
//                blue: components.B,
//                opacity: alpha
//            )
//        }
//    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
