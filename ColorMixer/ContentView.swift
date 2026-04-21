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
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.mint)
                .frame(height:200)
                .padding(20)
            VStack {
                HStack {
                    Text("Red")
                }
                HStack {
                    Text("Green")
                }
                HStack {
                    Text("Blue")
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
