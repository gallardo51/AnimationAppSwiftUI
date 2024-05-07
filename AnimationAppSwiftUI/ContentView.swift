//
//  ContentView.swift
//  AnimationAppSwiftUI
//
//  Created by Александр Соболев on 28.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSnowFall = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    showSnowFall.toggle()
                }
            }) {
                ZStack() {
                    if showSnowFall {
                        Rectangle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [.green, .blue]),
                                    startPoint: UnitPoint(x: 0, y: 1),
                                    endPoint: UnitPoint(x: 1, y: 0)
                                )
                            )
                            .frame(width: 400, height: 400)
                        ChristmasTreeView()
                            .frame(width: 250, height: 250)
                            .offset(CGSize(width: -15.0, height: 0.0)
                            )
                        Text("Happy New Year!!!")
                            .font(.largeTitle)
                            .foregroundStyle(Color.yellow)
                            .offset(CGSize(width: 0, height: -180)
                            )
                            .transition(.showLabelTransition)
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.red)
                            .offset(CGSize(width: 10, height: -110)
                            )
                        Image(systemName: "gift.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .offset(CGSize(width: 90, height: 145))
                            .foregroundStyle(Color(.blue))
                        Image(systemName: "gift.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .offset(CGSize(width: 70, height: 110))
                            .foregroundStyle(Color(.yellow))
                        Image(systemName: "gift.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .offset(CGSize(width: 35, height: 135))
                            .foregroundStyle(Color(.purple))
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 100, height: -150)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 150, height: -100)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 180, height: 20)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 60, height: -50)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -20, height: -150)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -70, height: 20)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -120, height: -140)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -150, height: -70)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -150, height: -70)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -40, height: -50)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -150, height: 70)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: -100, height: 150)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 120, height: 0)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 100, height: 50)
                            )
                            .transition(.transition)
                        Image(systemName: "snowflake")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                            .offset(CGSize(width: 150, height: 100)
                            )
                            .transition(.transition)
                    } else {
                        Text("🎄Show Christmas Tree🎅")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                            .transition(.scale)
                    }
                }
            }
        }
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

extension AnyTransition {
    static var showLabelTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .bottom)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .bottom)
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


#Preview {
    ContentView()
}
