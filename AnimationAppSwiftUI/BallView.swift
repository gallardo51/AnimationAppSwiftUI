//
//  BallView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 30.04.2024.
//

import SwiftUI

struct BallView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: 160, y: 20))
                path.addLine(to: CGPoint(x: 160, y: 40))
                path.addLine(to: CGPoint(x: 140, y: 40))
                path.addLine(to: CGPoint(x: 140, y: 20))
                path.addLine(to: CGPoint(x: 160, y: 20))
            }
            .fill(Color.yellow)
            .stroke(
                Color.black,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path { path in
                path.move(to: CGPoint(x: 160, y: 40))
                path.addQuadCurve(to: CGPoint(x: 160, y: 80), control: CGPoint(x: 200, y: 60))
                path.addQuadCurve(to: CGPoint(x: 140, y: 80), control: CGPoint(x: 150, y: 90))
                path.addQuadCurve(to: CGPoint(x: 140, y: 40), control: CGPoint(x: 100, y: 60))
            }
            .fill(Color.red)
            .stroke(
                Color.black,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
        }
    }
}

#Preview {
    BallView()
        .frame(width: 300, height: 300)
}
