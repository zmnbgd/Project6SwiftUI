//
//  Showing AndHidingViewsWithTransitions.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 26.2.25..
//

import SwiftUI

struct ShowingAndHidingViewsWithTransitions: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                //MARK: - Do nothing
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }

        }
    }
}

#Preview {
    ShowingAndHidingViewsWithTransitions()
}
