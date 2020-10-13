//
//  Stacks02.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/10/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI

struct Stacks02: View {
    var body: some View {
        ZStack{
            
            Circle()
                .fill(Color.catPurple)
                .frame(width: 170, height: 170)
                .padding([.top, .bottom])
                .shadow(radius: 10)
            
            
            VStack{
                Image("people_cat-on-keyboard")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text("RegEx for Cats")
                    .font(Font.system(.largeTitle, design: .rounded))
                    .foregroundColor(.primary)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(15)
                
            }
            Spacer()
            .layoutPriority(1)
        }
        .background(Color.rayWenderlichGreen)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Stacks02_Previews: PreviewProvider {
    static var previews: some View {
        Stacks02()
    }
}
