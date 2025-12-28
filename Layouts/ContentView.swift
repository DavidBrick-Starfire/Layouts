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
        GeometryReader { geometry in
            VStack {
/*                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.goldBC)
                    .padding()
                    .background(Color("Maroon-BC"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
  */              Spacer()
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
                    .frame(width: geometry.size.width * 2/3 , height: 1)
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
                //          .border(.purple, width: 2)
                .padding()
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
}

#Preview {
    ContentView()
}
