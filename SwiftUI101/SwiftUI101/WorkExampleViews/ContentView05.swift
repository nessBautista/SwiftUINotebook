//
//  ContentView05.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView05: View {
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(Book.demoBooks){ book in
                    VStack{
                        Text(book.title)
                            .padding([.leading, .top, .trailing])
                            .multilineTextAlignment(.center)
                        Image(book.imageName)
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .frame(width: 150, height: 150)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                    .shadow(radius: 3)
                }
            }
        }
    }
}

struct ContentView05_Previews: PreviewProvider {
    static var previews: some View {
        ContentView05()
    }
}
