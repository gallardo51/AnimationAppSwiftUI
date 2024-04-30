//
//  PevotView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 28.04.2024.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: farLine - nearLine - 10, y: nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: nearLine * 2))
                path.addLine(to: CGPoint(x: farLine, y: nearLine * 2 + 5))
                path.addLine(to: CGPoint(x: farLine - nearLine + 5, y: middle / 2 + 5))
                path.addLine(to: CGPoint(x: farLine - 10, y: middle - nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine - 10, y: nearLine * 3 + 5))
                path.addLine(to: CGPoint(x: middle + nearLine + 10, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle + nearLine + 15, y: nearLine * 3 - 5))
                path.addLine(to: CGPoint(x: middle + nearLine, y: nearLine * 2 + 5))
                path.addLine(to: CGPoint(x: middle + nearLine * 2, y: nearLine * 2))
                path.addLine(to: CGPoint(x: farLine - nearLine - 10, y: nearLine))
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
    StarView()
        .frame(width: 100, height: 100)
}

