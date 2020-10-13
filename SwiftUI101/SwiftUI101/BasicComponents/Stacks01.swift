//
//  Stacks01.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/10/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI
struct Stacks01: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("Sign Up your cat for RegEx for Cats")
                .font(Font.system(.headline, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .padding([.top, .bottom])
                
            
            HStack {
                Image("people_cat-on-keyboard")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Button(action: {
                    
                }){
                    HStack{
                        Text("Sign Up Today!")
                        Image(systemName: "checkmark.circle")
                    }
                    
                }
                .padding()
                .background(Color.catPurple)
                .foregroundColor(.white)
                .shadow(radius: 5)
            }
        }
    }
}
/*
struct Stacks01: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 20){
            Text("RegEx for Cats")
                .font(Font.system(.largeTitle, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .padding([.leading, .trailing])
            Image("people_cat-on-keyboard")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .padding()
            
        }
        .background(Color.catPurple)
    }
}
*/


struct Stacks01_Previews: PreviewProvider {
  static var previews: some View {
    Group {
        Stacks01()
        .previewDevice("iPhone SE")
        Stacks01()
        .previewLayout(.sizeThatFits)
        Stacks01()
        .environment(\.colorScheme, .dark)
    }
  }
}

extension Color {
  static let catPurple = Color(red: 128/255, green: 94/255, blue: 158/255)
}
