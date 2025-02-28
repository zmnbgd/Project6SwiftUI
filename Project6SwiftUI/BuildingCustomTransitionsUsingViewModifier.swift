//
//  BuildingCustomTransitionsUsingViewModifier.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 28.2.25..
//

import SwiftUI

struct CornerRotationModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(
                .degrees(amount), anchor: anchor)
                .clipped()
            
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotationModifier(amount: -90, anchor: .topLeading),
                  identity: CornerRotationModifier(amount: 0, anchor: .topLeading))
    }
}

struct BuildingCustomTransitionsUsingViewModifier: View {
    
    @State private var isShowingRed = false
    

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                        
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    BuildingCustomTransitionsUsingViewModifier()
}
