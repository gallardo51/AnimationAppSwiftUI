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
                path.move(to: CGPoint(x: 150, y: 20))
                path.addLine(to: CGPoint(x: 160, y: 40))
                path.addLine(to: CGPoint(x: 180, y: 45))
                path.addLine(to: CGPoint(x: 165, y: 55))
                path.addLine(to: CGPoint(x: 170, y: 80))
                path.addLine(to: CGPoint(x: 150, y: 65))
                path.addLine(to: CGPoint(x: 130, y: 80))
                path.addLine(to: CGPoint(x: 135, y: 55))
                path.addLine(to: CGPoint(x: 120, y: 45))
                path.addLine(to: CGPoint(x: 140, y: 40))
                path.addLine(to: CGPoint(x: 150, y: 20))
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
        .frame(width: 300, height: 300)
}

