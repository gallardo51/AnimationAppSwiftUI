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
                path.addLine(to: CGPoint(x: 150, y: 20))
                path.move(to: CGPoint(x: 150, y: 80))
                path.addLine(to: CGPoint(x: 190, y: 160))
                path.addLine(to: CGPoint(x: 110, y: 160))
                path.addLine(to: CGPoint(x: 150, y: 80))
                path.move(to: CGPoint(x: 150, y: 120))
                path.addLine(to: CGPoint(x: 210, y: 210))
                path.addQuadCurve(
                    to: CGPoint(x: 90, y: 210),
                    control: CGPoint(x: 150, y: 230))
                path.addLine(to: CGPoint(x: 150, y: 120))
                
            }
            .fill(Color.green)
           
            Path { path in
                path.move(to: CGPoint(x: 140, y: 60))
                path.addQuadCurve(
                    to: CGPoint(x: 167, y: 90),
                    control: CGPoint(x: 150, y: 85))
            }
            .stroke(
                Color.yellow, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 160, y: 60))
                path.addQuadCurve(
                    to: CGPoint(x: 132, y: 95),
                    control: CGPoint(x: 150, y: 85))
            }
            .stroke(
                Color.blue, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 135, y: 110))
                path.addQuadCurve(
                    to: CGPoint(x: 180, y: 140),
                    control: CGPoint(x: 150, y: 150))
            }
            .fill(Color.green)
            .stroke(
                Color.red, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 160, y: 100))
                path.addQuadCurve(
                    to: CGPoint(x: 123, y: 160),
                    control: CGPoint(x: 150, y: 150))
            }
            .stroke(
                Color.orange, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 120, y: 140))
                path.addQuadCurve(
                    to: CGPoint(x: 182, y: 170),
                    control: CGPoint(x: 150, y: 210))
            }
            .stroke(
                Color.gray, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 177, y: 160))
                path.addQuadCurve(
                    to: CGPoint(x: 95, y: 205),
                    control: CGPoint(x: 150, y: 210))
            }
            .stroke(
                Color.indigo, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 110, y: 180))
                path.addQuadCurve(
                    to: CGPoint(x: 195, y: 190),
                    control: CGPoint(x: 140, y: 234))
            }
            .stroke(
                Color.purple, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: 170, y: 220))
                path.addLine(to: CGPoint(x: 170, y: 240))
                path.addQuadCurve(
                to: CGPoint(x: 130, y: 240),
                control: CGPoint(x: 150, y: 244))
                path.addLine(to: CGPoint(x: 130, y: 220))
            }
            .fill(Color.brown)
            
        }
    }
}

#Preview {
    ChristmasTreeView()
        .frame(width: 300, height: 300)
}
