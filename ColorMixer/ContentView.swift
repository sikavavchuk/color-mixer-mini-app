//
//  ContentView.swift
//  ColorMixer
//
//  Created by Viktoriia Savchuk  on 21/04/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
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
                //sliders
            }
        }
    }
}
