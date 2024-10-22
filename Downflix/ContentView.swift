//
//  ContentView.swift
//  Downflix
//
//  Created by salih söğüt on 21.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                VStack {
                    Text("Downflix".uppercased())
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                }
                
                Spacer()
                
                Button(action: {
                    runShortcut()
                }) {
                    Circle()
                        .strokeBorder(Color.white.opacity(0.8), lineWidth: 2)
                        .background(Circle().fill(Color.black))
                        .frame(width: 150, height: 150)
                        .shadow(radius: 10)
                }
                .padding(.bottom, 20)
                
                Button(action: {
                    
                }) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 40))
                        .foregroundColor(.orange)
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "circle.grid.2x2.fill")
                        .foregroundColor(.orange)
                        .font(.largeTitle)
                    
                    Text("VIDEOS")
                        .font(.title2)
                        .foregroundColor(.orange)
                }
                .padding(.bottom, 40)
            }
        }
    }
    
    func runShortcut() {
        if let url = URL(string: "shortcuts://run-shortcut?name=R%E2%A4%93Download") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

#Preview {
    ContentView()
}
