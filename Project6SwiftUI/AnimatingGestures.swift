//
//  AnimatingGestures.swift
//  Project6SwiftUI
//
//  Created by Marko Zivanovic on 25.2.25..
//

import SwiftUI

struct AnimatingGestures: View {
    
//    @State private var dragAmount = CGSize.zero
    
    let letters = Array("Hello SwiftUI!")
    
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(.rect(cornerRadius: 10))
//            .offset(dragAmount)
//        
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in
//                        withAnimation(.bouncy) {
//                            dragAmount = .zero
//                        }
//                    }
//            )
//            //.animation(.bouncy, value: dragAmount)
        
        
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(self.letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
            
            
            
        )
    }
}

#Preview {
    AnimatingGestures()
}
