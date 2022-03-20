//
//  BarnyView.swift
//  BarnyAnimation
//
//  Created by Sergey Shcheglov on 20.03.2022.
//

import SwiftUI

//iphone 11pro, x resolution: 375x812
struct BarnyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 228, y: 456))
        
        // right side
        path.addLine(to: CGPoint(x: 226, y: 384))
        
        //right hand
        path.addCurve(to: CGPoint(x: 254, y: 385), control1: CGPoint(x: 240, y: 389), control2: CGPoint(x: 248, y: 390))
        path.addCurve(to: CGPoint(x: 235, y: 345), control1: CGPoint(x: 260, y: 375), control2: CGPoint(x: 258, y: 364))
        
        path.addCurve(to: CGPoint(x: 247, y: 292), control1: CGPoint(x: 249, y: 308), control2: CGPoint(x: 248, y: 296))
        
        
        //EARS AND HEAD
        //right ear
        path.addCurve(to: CGPoint(x: 257, y: 264), control1: CGPoint(x: 263, y: 283), control2: CGPoint(x: 262, y: 270))
        path.addCurve(to: CGPoint(x: 227, y: 267), control1: CGPoint(x: 249, y: 259), control2: CGPoint(x: 239, y: 259))
        
        //head
        path.addCurve(to: CGPoint(x: 146, y: 266), control1: CGPoint(x: 196, y: 252), control2: CGPoint(x: 177, y: 253))
        
        //left ear
        path.addCurve(to: CGPoint(x: 116, y: 265), control1: CGPoint(x: 136, y: 260), control2: CGPoint(x: 125, y: 259))
        path.addCurve(to: CGPoint(x: 126, y: 293), control1: CGPoint(x: 110, y: 275), control2: CGPoint(x: 115, y: 288))


        //LEFT SIDE
        path.addCurve(to: CGPoint(x: 138, y: 344), control1: CGPoint(x: 124, y: 304), control2: CGPoint(x: 130, y: 330))
        
        //left hand
        path.addCurve(to: CGPoint(x: 117, y: 384), control1: CGPoint(x: 114, y: 366), control2: CGPoint(x: 113, y: 376))
        path.addCurve(to: CGPoint(x: 147, y: 383), control1: CGPoint(x: 126, y: 390), control2: CGPoint(x: 125, y: 389))

        //left side
        path.addLine(to: CGPoint(x: 145, y: 456))
        
        //Bottom
        path.addLine(to: CGPoint(x: 177, y: 456))
        path.addLine(to: CGPoint(x: 177, y: 443))
        
        path.addCurve(to: CGPoint(x: 196, y: 443), control1: CGPoint(x: 179, y: 439), control2: CGPoint(x: 194, y: 439))
        path.addLine(to: CGPoint(x: 196, y: 456))
        path.addLine(to: CGPoint(x: 228, y: 456))

        return path
    }
}

struct BarnyShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            BarnyShape()
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round, miterLimit: 8))
                .foregroundColor(.white)
        }

    }
}
