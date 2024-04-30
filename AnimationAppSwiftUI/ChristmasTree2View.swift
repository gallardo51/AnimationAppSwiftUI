//
//  ChristmasTree2View.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 30.04.2024.
//

import SwiftUI

struct ChristmasTree2View: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine - 5))
                path.addLine(to: CGPoint(x: nearLine * 2 + middle - 5, y: middle - nearLine))
                path.addLine(to: CGPoint(x: nearLine / 5 + middle, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle + nearLine, y: nearLine - 5))
                path.move(to: CGPoint(x: middle + nearLine, y: middle - nearLine * 2 + 5))
                path.addLine(to: CGPoint(x: farLine - nearLine - 10, y: middle + nearLine + 10))
                path.addLine(to: CGPoint(x: middle - nearLine + 10, y:  middle + nearLine + 10))
                path.addLine(to: CGPoint(x: middle + nearLine, y: middle - nearLine * 2 + 5))
                path.move(to: CGPoint(x: middle + nearLine, y: middle - 5))
                path.addLine(to: CGPoint(x: farLine - nearLine + 10, y: farLine - nearLine + 10))
                path.addQuadCurve(
                    to: CGPoint(x: middle - nearLine - 10, y: farLine - nearLine + 10),
                    control: CGPoint(x: middle + nearLine, y: farLine + 5)
                )
                path.addLine(to: CGPoint(x: middle + nearLine, y: middle - 5))
                
            }
            .fill(Color.green)
           
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine - 10, y: nearLine * 2 + 10))
                path.addQuadCurve(
                    to: CGPoint(x: middle + nearLine + 17, y: middle - nearLine - 10),
                    control: CGPoint(x: middle + nearLine, y: middle - nearLine - 15)
                )
            }
            .stroke(
                Color.yellow, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine + 10, y: nearLine * 2 + 10))
                path.addQuadCurve(
                    to: CGPoint(x: middle + 7, y: middle - nearLine - 5),
                    control: CGPoint(x: 150, y: 85)
                )
            }
            .stroke(
                Color.blue, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle + 10, y: middle - 15))
                path.addQuadCurve(
                    to: CGPoint(x: farLine - nearLine - 20, y: middle + nearLine - 10),
                    control: CGPoint(x: middle + nearLine, y: middle + nearLine)
                )
            }
            .stroke(
                Color.red, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine + 10, y: middle - nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: middle - 2, y: middle + nearLine + 10),
                    control: CGPoint(x: middle + nearLine, y: middle + nearLine)
                )
            }
            .stroke(
                Color.orange, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle - 5, y: middle + nearLine - 10))
                path.addQuadCurve(
                    to: CGPoint(x: middle + nearLine + 32, y: middle + nearLine + 20),
                    control: CGPoint(x: middle + nearLine, y: farLine - 15)
                )
            }
            .stroke(
                Color.gray, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine + 27, y: middle + nearLine + 10))
                path.addQuadCurve(
                    to: CGPoint(x: middle - nearLine - 5, y: farLine - 20),
                    control: CGPoint(x: 150, y: 210)
                )
            }
            .stroke(
                Color.indigo, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle - 15, y: middle + nearLine + 30))
                path.addQuadCurve(
                    to: CGPoint(x: farLine - nearLine - 5, y: farLine - nearLine - 15),
                    control: CGPoint(x: middle + 15, y: farLine + 9)
                )
            }
            .stroke(
                Color.purple, style: StrokeStyle(
                lineWidth: 1))
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine + 20, y: farLine - 5))
                path.addLine(to: CGPoint(x: middle + nearLine + 20, y: size - 10))
                path.addQuadCurve(
                to: CGPoint(x: middle + 5, y: size - 10),
                control: CGPoint(x: middle + nearLine, y: size - 6)
                )
                path.addLine(to: CGPoint(x: middle + 5, y: farLine - 5))
            }
            .fill(Color.brown)
            
        }
    }
}

#Preview {
    ChristmasTree2View()
        .frame(width: 250, height: 250)
}
