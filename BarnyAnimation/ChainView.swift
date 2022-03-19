//
//  ChainView.swift
//  BarnyAnimation
//
//  Created by Sergey Shcheglov on 19.03.2022.
//

import SwiftUI

struct ChainView: View {
    let letters = Array("🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗🔗")
        
        @State private var enabled = false
        @State private var dragAmount = CGSize.zero
        
        var body: some View {
            VStack(spacing: 0) {
                ForEach(0..<letters.count) { num in
                    Text(String(letters[num]))
                        .padding(-10)
                        .font(.largeTitle)
                        .rotationEffect(.degrees(enabled ? 0 : 360), anchor: .bottom)
                        .offset(dragAmount)
                        .animation(.interpolatingSpring(stiffness: 170, damping: 5).delay(Double(num) / 20), value: dragAmount)
                }
            }
            .padding()
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                // _ ignore the value coming in this time
                    .onEnded { _ in
                        withAnimation{
                            dragAmount = .zero
                            enabled.toggle()
                        }
                    }
            )
        }

}

struct ChainView_Previews: PreviewProvider {
    static var previews: some View {
        ChainView()
    }
}
