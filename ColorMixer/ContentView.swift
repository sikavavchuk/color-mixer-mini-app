//
//  ContentView.swift
//  ColorMixer
//
//  Created by Viktoriia Savchuk  on 21/04/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.mint)
                    .frame(height:200)
                    .padding(20)
                Text("Color Preview")
                    .font(Font.title.bold())
                    .foregroundStyle(.white)
            }
            VStack {
                HStack {
                    Text("Red")
                        .foregroundStyle(.red)
                    Slider(value: .constant(0.5))
                    Text("0.63")
                }
                HStack {
                    Text("Green")
                        .foregroundStyle(.green)
                    Slider(value: .constant(0.5))
                    Text("0.63")
                }
                HStack {
                    Text("Blue")
                        .foregroundStyle(.blue)
                    Slider(value: .constant(0.5))
                    Text("0.63")
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
