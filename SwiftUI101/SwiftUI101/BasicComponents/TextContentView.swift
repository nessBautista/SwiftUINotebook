//
//  TextContentView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI
struct TextContentView: View {
    
    let pets = ["Catie","Laurie", "Ray", "Jessy", "Antonio"]
    var body: some View {
        Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ")
            .font(.custom("Menlo Regular", size: 16))
            .foregroundColor(.primary)
            .lineLimit(nil)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .truncationMode(.middle)
            .padding()
            .background(Color.gray)
            .border(Color.black, width: 3)
    }
}

struct TextContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextContentView()
                .environment(\.colorScheme, .dark)
            TextContentView()
                .environment(\.sizeCategory,.accessibilityExtraExtraLarge)
                
        }
    }
}
