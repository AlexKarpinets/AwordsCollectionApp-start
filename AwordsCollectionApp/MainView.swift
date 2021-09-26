//
//  ContentView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    @State private var heartPulseOne = false
    @State private var heartPulseTwo = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            Spacer()
            if showAward {
                ZStack {
                    HeartPulse (width: 350, height: 350).opacity(0.5).scaleEffect(heartPulseOne ? 0.9 : 0)
                HeartPulse (width: 250, height: 250).opacity(0.7).scaleEffect(heartPulseTwo ? 1 : 0)
                HeartPulse (width: 150, height: 150).opacity(1)
            }
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation(Animation.linear(duration: 1.7).repeatForever(autoreverses: false)){
            showAward.toggle()
            heartPulseOne.toggle()
            heartPulseTwo.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
