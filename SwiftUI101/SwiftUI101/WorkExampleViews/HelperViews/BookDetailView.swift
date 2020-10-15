//
//  BookDetailView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct BookDetailView: View {
    @Binding var book: Book
    @ObservedObject var user: User
    
    var body: some View {
        VStack{
            Text(book.title)
            Image(book.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                Button(action: {
                    self.book.isLiked.toggle()
                    
                    switch(self.book.isLiked, self.user.likedBooks.firstIndex(of: self.book)){
                    case(true, nil):
                        self.user.likedBooks.append(self.book)
                    case(false, let index?):
                        self.user.likedBooks.remove(at:index)
                    default:
                        break
                    }
                }) {
                    Text("👍 Like")
                        .padding()
                        .foregroundColor(book.isLiked ? .secondary : .primary)
                        .background(book.isLiked ? Color.rayWenderlichGreen : Color.white)
                        .cornerRadius(10)
                }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .constant(Book.demoBooks.randomElement()!), user: User.exampleUser)
    }
}
