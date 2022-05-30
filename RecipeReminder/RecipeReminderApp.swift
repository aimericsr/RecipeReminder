//
//  RecipeReminderApp.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

@main
struct RecipeReminderApp: App {
    @StateObject private var session = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            RootApp()
                .environmentObject(session)
        }
    }
}
