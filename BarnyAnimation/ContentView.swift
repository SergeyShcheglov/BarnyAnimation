//
//  ContentView.swift
//  BarnyAnimation
//
//  Created by Sergey Shcheglov on 18.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var customWidth: Double = 5.0
    @State private var fromTrim = 0.0
    @State private var endTrim = 0.2
    
    @State private var showAnimation = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            BarnyShape()
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round, miterLimit: 8))
                .foregroundColor(.white)
            
            BarnyShape()
                .trim(from: fromTrim, to: endTrim)
                .stroke(Color.mint, lineWidth: customWidth)
            
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
                withAnimation {
                    fromTrim += 0.05
                    endTrim += 0.05
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
