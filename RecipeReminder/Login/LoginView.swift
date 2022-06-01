//
//  LoginView.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct LoginView: View {
    let action: () -> Void
    
    var body: some View {
        VStack {
            Form{
                TextField("Username", text: .constant(""))
                SecureField("Password", text: .constant(""))
                Button {
                    action()
                } label: {
                    Text("Log to your account")
                }

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView {}
    }
}
