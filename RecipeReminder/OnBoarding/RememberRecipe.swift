//
//  RememberRecipe.swift
//  RecipeReminder
//
//  Created by Aimeric Sorin on 30/05/2022.
//

import SwiftUI

struct RememberRecipe: View {
    @State private var isShowingPage: Bool = false
    
    var body: some View {
        VStack {
            Image.remember
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400)
                .scaleEffect(isShowingPage ? 1 : 0.5)
                .opacity(isShowingPage ? 1 : 0.8)
                .animation(.easeInOut(duration: 0.6), value: isShowingPage)
            Text("Remember all of your favorites Recipe")
            Spacer()
                .frame(maxHeight: 100)
        }
        .onAppear {
            isShowingPage.toggle()
        }
    }
}

struct RememberRecipe_Previews: PreviewProvider {
    static var previews: some View {
        RememberRecipe()
    }
}
