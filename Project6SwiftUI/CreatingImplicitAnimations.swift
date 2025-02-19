//
//  CreatingImplicitAnimations.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 19.2.25..
//

import SwiftUI

struct CreatingImplicitAnimations: View {
    
    @State private var animationAmount = 2.0
    
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    CreatingImplicitAnimations()
}
