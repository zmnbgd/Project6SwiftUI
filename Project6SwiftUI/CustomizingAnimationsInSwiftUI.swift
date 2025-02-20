//
//  CustomizingAnimationsInSwiftUI.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 20.2.25..
//

import SwiftUI

struct CustomizingAnimationsInSwiftUI: View {
    
    @State private var animationAmount = 2.0
    
    var body: some View {
        Button("Tap me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(Circle())
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1.0)
                    .repeatForever(autoreverses: false) ,
                    value: animationAmount)
        )
        .onAppear {
            animationAmount = 2.0
        }
//        .animation(.linear, value: animationAmount)
        
//        .animation(.spring(duration: 1.0, bounce: 0.9), value: animationAmount)
        
//        .animation(.easeInOut(duration: 2.0), value: animationAmount)
        
//        .animation(
//            .easeInOut(duration: 2.0)
//            .delay(1.0),
//            value: animationAmount)
        
//        .animation(
//            .easeInOut(duration: 2.0)
//            .repeatCount(3, autoreverses: true),
//            value: animationAmount)
        


    }
}

#Preview {
    CustomizingAnimationsInSwiftUI()
}
