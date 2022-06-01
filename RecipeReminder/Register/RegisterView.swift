//
//  SignUpView.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct RegisterView: View {
    let action: () -> Void
    
    var body: some View {
        VStack {
            Text("Hello to our app")
            Text("Please enter your informations : ")
            Button {
                action()
            } label: {
                Text("Sign up to the app")
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView {}
    }
}
