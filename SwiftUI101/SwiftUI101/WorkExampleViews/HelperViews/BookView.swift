//
//  BookView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct BookView: View {
    var book: Book
    var proxy:GeometryProxy
    
    var body: some View {
        VStack{
            Text(book.title)
                .fontWeight(.bold)
                .font(Font.system(.headline, design: .rounded))
                .minimumScaleFactor(0.75)
                .foregroundColor(.white)
                .padding([.leading, .top, .trailing])
                .multilineTextAlignment(.center)
            Image(book.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color:.gray, radius:20)
        }
        .padding()
        .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width), height: proxy.size.height - 50)        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{proxy in
            BookView(book: Book.demoBooks.randomElement()!, proxy: proxy)
        }
        
    }
}
