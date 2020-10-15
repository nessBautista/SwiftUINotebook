//
//  BookListView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct BookListView: View {
    //keep track of the sheet presentation
    @Binding var books: [Book]
    @State private var isPresented = false
    @ObservedObject var user:User
    var body: some View {
        
        NavigationView {
            ZStack {
                ScrollView(.horizontal){
                    HStack{
                        ForEach(books){ book in
                            GeometryReader{proxy in
                                //TAKE NOTICE
                                //When selecting an element from the table the detailview will show another book detail
                                //not the one selected. To get this right you should:
                                //- Get the Index selected to extract it directly from binding array; $books[index]
                                //- Find a way to pass directly the binding of the selected book
                                NavigationLink(destination: BookDetailView(book:$books[books.indices.randomElement()!], user: user)){
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

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView(books: .constant(Book.demoBooks), user: User.exampleUser)
    }
}
