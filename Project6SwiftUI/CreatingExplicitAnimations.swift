//
//  CreatingExplicitAnimations.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 22.2.25..
//

import SwiftUI

struct CreatingExplicitAnimations: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    CreatingExplicitAnimations()
}
