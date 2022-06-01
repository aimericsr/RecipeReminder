//
//  ContentView.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct RootApp: View {
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        ZStack {
            switch session.currentState {
            case .loggedIn:
                HomeView()
                    .transition(.opacity)
            case .loggedOut:
                LoginView(action: session.LogIn)
                    .transition(.opacity)
            case .onboarding:
                RootOnBoarding(action: session.completeOnboarding)
                    .transition(.opacity)
            case .register:
                RegisterView(action: session.signIn)
                    .transition(.opacity)
            default:
                Color.blue.ignoresSafeArea()
            }
        }
        .onAppear{
            print(session.currentState)
            session.configureCurrentState()
        }
    }
}

struct RootApp_Previews: PreviewProvider {
    static var previews: some View {
        RootApp()
            .environmentObject(SessionManager())
    }
}
