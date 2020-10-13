//
//  ZStackContentView.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/9/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI

struct ZStackContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("creature-square-cat")
                    .resizable()
                    .frame(width: 300, height:300, alignment: .center)
                    .blendMode(.hardLight)
                
                Text("😸** Meow**😸")
                    .font(Font.system(.largeTitle, design: .monospaced))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color:Color.black, radius: 10, x:10, y:10)
                    .rotationEffect(Angle(degrees:-10))
                
            }
            Spacer()
            .layoutPriority(1)
        }
        .background(Color.rayWenderlichGreen)
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

struct ZStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackContentView()
    }
}

// Everyone's favorite color
extension Color {
  static let rayWenderlichGreen = Color(red: 21/255, green: 132/255, blue: 67/255)
}

