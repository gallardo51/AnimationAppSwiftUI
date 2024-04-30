//
//  ContentView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 28.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            StarView()
                .frame(width: 150,height: 150)
            ChristmasTreeView()
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    ContentView()
}
