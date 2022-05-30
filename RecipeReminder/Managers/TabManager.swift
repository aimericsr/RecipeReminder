//
//  TabManager.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import Foundation

enum Screen {
    case list
    case create
    case search
    case profile
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .list
    
    func change(to screen: Screen){
        self.screen = screen
    }
}
