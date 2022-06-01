//
//  HomeView.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        VStack {
            Text("Home Screen")
            Button {
                session.LogOut()
            } label: {
                Text("Log out of your account")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SessionManager())
    }
}
