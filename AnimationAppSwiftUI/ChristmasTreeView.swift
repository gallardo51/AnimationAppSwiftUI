//
//  ChristmasTreeView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 28.04.2024.
//

import SwiftUI

struct ChristmasTreeView: View {
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
            path.addLine(to: CGPoint(x: 170, y: 100))
            path.addLine(to: CGPoint(x: 130, y: 100))
            path.move(to: CGPoint(x: 150, y: 80))
            path.addLine(to: CGPoint(x: 190, y: 160))
            path.addLine(to: CGPoint(x: 110, y: 160))
            path.move(to: CGPoint(x: 150, y: 120))
            path.addLine(to: CGPoint(x: 210, y: 210))
            path.addQuadCurve(to: CGPoint(x: 90, y: 210), control: CGPoint(x: 150, y: 230))
            
        }
        .fill(Color.green)
        
        Path { path in
            path.move(to: CGPoint(x: 170, y: 210))
            path.addLine(to: CGPoint(x: 170, y: 240))
            path.addLine(to: CGPoint(x: 130, y: 240))
            path.addLine(to: CGPoint(x: 130, y: 210))
        }
        
    }
}

#Preview {
    ChristmasTreeView()
        .frame(width: 300, height: 300)
}
