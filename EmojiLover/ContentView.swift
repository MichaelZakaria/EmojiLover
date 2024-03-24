//
//  ContentView.swift
//  EmojiLover
//
//  Created by Marco Zakaria on 24/03/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🥸,😭,🤯,😡
}

struct ContentView: View {
   @State var selection: Emoji = .🥸
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Selected Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
