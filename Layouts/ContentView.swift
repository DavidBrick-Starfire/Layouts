//
//  ContentView.swift
//  Layouts
//
//  Created by David Brick on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    @State var messageString = "When the genius bar needs help, they call you!"
    var body: some View {
    //    ZStack {
      //      Color.skyBlue
//                .ignoresSafeArea()
//        GeometryReader { geometry in
            VStack {
                Text("Awesome!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.indigo)
//                    .clipShape(RoundedRectangle(cornerRadius: 15))
              Spacer()
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                //              .border(.orange, width: 2)
                    .padding()
                Spacer()
                Divider()
                    .padding()
                    .background(.black)
                    .frame(width: 150.0)
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 150.0, height: 1)
//                    .frame(width: geometry.size.width * 2/3 , height: 1)
                HStack {
                    Button("Awesome") {
                        messageString = "You are Awesome!"
                    }
                    Spacer()
                    Button("Great") {
                        messageString = "You are Great!"
                    }
                 }
                .buttonStyle(.borderedProminent)
                .padding()
                //          .border(.purple, width: 2)
                Rectangle()
                    .frame(height:0)
                    .background(.indigo)
                //               .font(.title2)
                //             .background(.blue)
            }
//            .background(
  //              Gradient(colors: [.orange,.yellow]
    //                     )
      //          )
  //      }
        //       .padding()

        }
    }
//}

#Preview {
    ContentView()
}
