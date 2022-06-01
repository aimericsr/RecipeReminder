//
//  RootOnBoarding.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct RootOnBoarding: View {
    let action: () -> Void
    
    var body: some View {
            TabView {
                RememberRecipe()
                    
                ShareRecipe()
                DiscoverRecipe()
                    .overlay(alignment: .bottom) {
                        Button("Continue") {
                            action()
                        }
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .frame(width: 150, height: 50)
                        .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                                 style: .continuous))
                        .offset(y: 50)
                        .transition(.scale.combined(with: .opacity))
                    }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct RootOnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        RootOnBoarding{}
    }
}
