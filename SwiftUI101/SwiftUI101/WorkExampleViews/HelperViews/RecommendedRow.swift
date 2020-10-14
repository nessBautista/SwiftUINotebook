//
//  RecommendedRow.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct RecommendedRow: View {
    @Binding var book:Book
    
    var body: some View {
        VStack{
            Text("Featured Book!")
                .foregroundColor(.white)
                .font(Font.system(.headline, design: .rounded))
                .padding()
            Text(book.title)
                .foregroundColor(.white)
                    .font(Font.system(.headline, design: .rounded))
                    .padding()
            Image(book.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        .shadow(color: .black, radius: 5, x: 5, y: 5)
    }
}

struct RecommendedRow_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedRow(book: .constant(Book.demoBooks.randomElement()!))
    }
}
