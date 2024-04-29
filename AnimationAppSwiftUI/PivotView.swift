//
//  PevotView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 28.04.2024.
//

import SwiftUI

struct PivotView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: size / 2 + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - 30, y: farLine))
                path.addLine(to: CGPoint(x: nearLine + 30, y: farLine))
                path.addLine(to: CGPoint(x: size / 2 - nearLine, y: nearLine))
            }
            .fill(Color.brown)
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
    PivotView()
        .frame(width: 150, height: 150)
}
