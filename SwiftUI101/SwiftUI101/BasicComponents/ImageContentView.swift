//
//  ImageContentView.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/9/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI

struct ImageContentView: View {
    var body: some View {
        VStack {
                    
//            Image("Ray")
//            .resizable()
//            .scaledToFit()
//            .clipShape(Circle())
//            .padding([.leading, .trailing])
//
//            Spacer()
//            Image("Catie")
//            .resizable()
//            .scaledToFit()
//            .mask(Image("mascot_swifty-superhero-blue").resizable())
//            .padding([.horizontal])
            
//            Spacer()
            Image("Ray")
                .resizable(capInsets: EdgeInsets(), resizingMode: .tile)
                .scaledToFill()
                .saturation(0.7)
                .contrast(100)
                .hueRotation(Angle(degrees: 300))
                .padding([.horizontal, .vertical])
                .edgesIgnoringSafeArea([.top, .bottom])
                
          
        }
    }
}

#if DEBUG

struct ImageContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImageContentView()
                .previewDevice("iPhone Xs Max")
//            ImageContentView()
//            .previewDevice("iPhone SE")
        }
    }
}
#endif
