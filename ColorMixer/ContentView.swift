//
//  ContentView.swift
//  ColorMixer
//
//  Created by Viktoriia Savchuk  on 21/04/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ColorMixerApplication()
    }
}

#Preview {
    ContentView()
}

struct ColorMixerApplication: View {
    @State private var red: Double = 0.0
    @State private var green: Double = 0.0
    @State private var blue: Double = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: red, green: green, blue: blue))
                    .frame(height:200)
                    .padding(20)
                Text("Color Preview")
                    .foregroundStyle(.white)
                    .bold()
                    .shadow(radius: 5)
            }
            VStack(spacing: 20) {
                ColorSlider(value: $red, text: "Red", color: .red)
                ColorSlider(value: $green, text: "Green", color: .green)
                ColorSlider(value: $blue, text: "Blue", color: .blue)
            }
            .padding()
        }
        .padding()
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    let text: String
    let color: Color
    
    var body: some View {
        HStack {
            Text(text)
                .frame(width: 50, alignment: .leading)
                .foregroundStyle(color)
            Slider(value: $value)
            Text("\(value, specifier: "%.2f")")
        }
    }
}
