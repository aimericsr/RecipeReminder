//
//  view2.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 01/06/2022.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var modelData = ModelData()
    
    var body: some View {
        ZStack {
            Color.red
            VStack {
                Image("Settings")
                    .foregroundColor(.blue)
                    .font(.system(size: 100.0))
                Text(String(format: "Number is %d ", modelData.number))
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
