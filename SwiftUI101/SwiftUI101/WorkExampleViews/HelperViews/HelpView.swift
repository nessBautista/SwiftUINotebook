//
//  HelpView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI


import SwiftUI

struct HelpView: View {
  var body: some View {
    
    ZStack {
      VStack {
        Image("mascot-swift_shopping")
          .resizable()
          .scaledToFit()
        
        Text("For more help go to raywenderlich.com")
          .font(Font.system(.largeTitle, design: .rounded))
          .foregroundColor(.white)
          .fontWeight(.bold)
          .lineLimit(nil)
      }
      .padding()
      
      Spacer()
      .layoutPriority(1)
    }
//    .background(Image("Team")
//      .renderingMode(.original)
//      .resizable()
//      .scaledToFill()
//      .opacity(1)
//      .overlay(Color.rayWenderlichGreen)
//      .blendMode(.multiply)
//      .blur(radius: 1))
//
//      .edgesIgnoringSafeArea(.all)
  }
  
}

struct HelpView_Previews: PreviewProvider {
  static var previews: some View {
    HelpView()
  }
}
