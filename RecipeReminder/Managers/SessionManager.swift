//
//  SessionManager.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import Foundation

final class SessionManager: ObservableObject {

    enum UserDefaultKeys {
        static let hasSeenOnboarding = "hasSeenOnboarding"
        static let hasCompletedSignUpFlow = "hasCompletedSignUpFlow"
        static let isLogged = "isLogged"
    }
    
    enum CurrentState {
        case onboarding
        case register
        case loggedIn
        case loggedOut
    }
    
    @Published private(set) var currentState: CurrentState?
    
    func signIn() {
        currentState = .loggedIn
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasCompletedSignUpFlow)
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.isLogged)
    }
    
    func LogIn() {
        currentState = .loggedIn
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.isLogged)
    }
    
    func LogOut() {
        currentState = .loggedOut
        UserDefaults.standard.set(false, forKey: UserDefaultKeys.isLogged)
    }
    
    func completeOnboarding() {
        currentState = .register
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.hasSeenOnboarding)
    }
    
    func configureCurrentState() {
        let hasCompletedOnboarding = UserDefaults.standard.bool(forKey: UserDefaultKeys.hasSeenOnboarding)
        let hasCompletedSignUpFlow = UserDefaults.standard.bool(forKey: UserDefaultKeys.hasCompletedSignUpFlow)
        let isLogged = UserDefaults.standard.bool(forKey: UserDefaultKeys.isLogged)
        
        if !hasCompletedOnboarding {
            currentState = .onboarding
        } else if !hasCompletedSignUpFlow {
            currentState = .register
        } else if !isLogged {
            currentState = .loggedOut
        } else {
            currentState = .loggedIn
        }
        
    }
}
