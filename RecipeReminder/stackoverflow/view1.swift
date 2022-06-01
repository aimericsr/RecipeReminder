//
//  view1.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 01/06/2022.
//


import Foundation
import SwiftUI

struct SliderView: View {
    
    @State private var text = "1"
    @State private var isEditing = false
    @State private var celsius: Double = 1
    
    @StateObject var modelData = ModelData()
    
    var body: some View {
        VStack {
            
            VStack {
                Text("Number from slider: \(Int(round(celsius)), specifier: "%d")")
                
                Slider(value: $celsius,
                       in: 1...20, step:1.0)
            }.onChange(of: celsius) { _ in
                
                self.text = String(Int(round(celsius)))
                self.modelData.number = Int(round(celsius))
            }
            
            HStack {
                Text("Number")
                Spacer()
                Text(String(text))
            }.padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
