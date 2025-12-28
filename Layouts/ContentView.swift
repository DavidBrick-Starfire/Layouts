//
//  ContentView.swift
//  Layouts
//
//  Created by David Brick on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    @State var messageString = "When the genius bar needs help, they call you"
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            HStack {
                Button("Awesome") {
                    messageString = "You are Awesome!"
                }
                Button("Great") {
                    messageString = "You are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .cornerRadius(10)
            .border(.purple, width: 2)
            //               .font(.title2)
            //             .background(.blue)
        }
 //       .padding()
    }
}

#Preview {
    ContentView()
}
