//
//  ContentView05.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView05: View {
    
    var body: some View {
        
        ZStack {
            ScrollView(.horizontal){
                HStack{
                    ForEach(Book.demoBooks){ book in
                        GeometryReader{proxy in
                            VStack{
                                Text(book.title)
                                    .fontWeight(.bold)
                                    .font(Font.system(.headline, design: .rounded))
                                    .minimumScaleFactor(0.75)
                                    .foregroundColor(.white)
                                    .padding([.leading, .top, .trailing])
                                    .multilineTextAlignment(.center)
                                Image(book.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(color:.gray, radius:20)
                            }
                            .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width), height: proxy.size.height - 50)
                            .background(
                                Image(book.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .overlay(Color.rayWenderlichGreen)
                                    .blendMode(.multiply)
                                    .blur(radius: 1)
                            )
                            .cornerRadius(10)
                            .padding()
                            .shadow(radius: 3)
                            .layoutPriority(1) //Geometry reader forces its child to obbey, changes its layout priority to maintain the image size unaffected by the parents authority (Notice the GeometryReader has a height of 300, same as the VStack)
                            .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 40), axis:(x:-4, y:-3, z:-3))
                        }
                        .frame(width: 200, height: 300)
                    }
                }
            }
            Spacer()
                .layoutPriority(1)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView05_Previews: PreviewProvider {
    static var previews: some View {
        ContentView05()
            .previewDevice("iPhone Xs")
    }
}
