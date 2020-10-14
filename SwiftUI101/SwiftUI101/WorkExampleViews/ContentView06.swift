//
//  ContentView06.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct ContentView06: View {
    //keep track of the sheet presentation
    @State private var isPresented = false
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView(.horizontal){
                    HStack{
                        ForEach(Book.demoBooks){ book in
                            GeometryReader{proxy in
                                
                                NavigationLink(destination: BookDetailView(book:book)){
                                    BookView(book: book, proxy: proxy)
                                }
                                .background(
                                    Image(book.imageName)
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .opacity(1)
                                        .overlay(Color.rayWenderlichGreen)
                                        .blendMode(.multiply)
                                        .blur(radius: 1)
                                )
                                .cornerRadius(10)
                                .padding(.vertical)
                                .shadow(radius: 3)
                                .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 25), axis:(x:-4, y:-3, z:-3))
                            }
                            .frame(width: 200, height: 300)
                        }
                    }
                }
                Spacer()
                    .layoutPriority(1)
            }
            .background(Color.black)
            .sheet(isPresented: self.$isPresented, content: {
                HelpView()
            })
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Swift Books")
            .navigationBarItems(trailing: Button(action:{
                    self.isPresented.toggle()
                }, label:{
                    Text("Help")
            }))
            
              
        }
    }
    
}

struct ContentView06_Previews: PreviewProvider {
    static var previews: some View {
        ContentView06()
    }
}
