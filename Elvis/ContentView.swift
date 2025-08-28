//
//  ContentView.swift
//  Elvis
//
//  Created by Ignacio Canto on 8/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  centerImage = ""
    @State private var  centerText = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: centerImage)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(centerText)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    centerImage = "peacesign"
                    centerText = "Peace"
                }
                
                Button("Love") {
                    centerImage = "heart"
                    centerText = "Love"
                }
                
                Button("Understanding") {
                    centerImage = "lightbulb"
                    centerText = "Understanding"
                }
                    
            }
                .tint(.purple)
                .buttonStyle(.glassProminent)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
