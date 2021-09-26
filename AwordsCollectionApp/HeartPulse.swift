//
//  RotationPerson.swift
//  AwordsCollectionApp
//
//  Created by Karpinets Alexander on 26.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct HeartPulse: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
            GeometryReader { geometry in
                let size = min(geometry.size.width, geometry.size.height)
                
                let nearLine = size * 0.2
                let farLine = size * 0.98
                let middle = size / 2
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine))
                    path.addQuadCurve(
                        to: CGPoint(x: farLine, y: 65),
                        control: CGPoint(x: size, y: 0))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: farLine),
                        control: CGPoint(x: size, y: 85))
                    path.addQuadCurve(
                        to: CGPoint(x: nearLine, y: middle),
                        control: CGPoint(x: 40, y: 110))
                    path.addQuadCurve(
                        to: CGPoint(x: 110, y: 45),
                        control: CGPoint(x: 0, y: 0))
                }
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.red, .gray]),
                        center: .center,
                        startRadius: geometry.size.width * 0.10,
                        endRadius: geometry.size.width * 0.9
                    )
                )
            }
//            } .shadow(color: .black, radius: 0.4, x: 4, y: 5)
            .frame(width: width, height: height)
        }
    }

struct RotationPerson_Previews: PreviewProvider {
    static var previews: some View {
        HeartPulse(width: 200, height: 200)
    }
}
