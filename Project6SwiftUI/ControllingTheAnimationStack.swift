//
//  ControllingTheAnimationStack.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 24.2.25..
//

import SwiftUI

struct ControllingTheAnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
//        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//        .animation(.default, value: enabled)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1.0, bounce: 0.6), value: enabled)
    }
}

#Preview {
    ControllingTheAnimationStack()
}
