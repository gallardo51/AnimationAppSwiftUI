//
//  BallView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 30.04.2024.
//

import SwiftUI

struct BallView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: farLine - nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine * 2, y: nearLine * 2))
                path.addLine(to: CGPoint(x: middle + nearLine * 2, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine))
            }
            .fill(Color.yellow)
            .stroke(
                Color.black,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path { path in
                path.move(to: CGPoint(x: farLine - nearLine, y: nearLine * 2))
                path.addQuadCurve(
                    to: CGPoint(x: farLine - nearLine, y: middle - nearLine),
                    control: CGPoint(x: farLine + nearLine, y: nearLine * 3)
                )
                path.addQuadCurve(
                    to: CGPoint(x: farLine - nearLine * 2, y: middle - nearLine),
                    control: CGPoint(x: farLine - nearLine - 10, y: middle - 10)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle + nearLine * 2, y: nearLine * 2),
                    control: CGPoint(x: middle, y: nearLine * 3)
                )
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
    BallView(color: .red, opacity: 1)
        .frame(width: 200, height: 200)
}
