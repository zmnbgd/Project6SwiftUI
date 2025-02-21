//
//  AnimatingBindings.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 21.2.25..
//

import SwiftUI

struct AnimatingBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    AnimatingBindings()
}
