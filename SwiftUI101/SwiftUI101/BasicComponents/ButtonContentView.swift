//
//  ButtonContentView.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/9/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI

struct ButtonContentView: View {
    
    let foodPrinter: ()->() = {
        print("The Food was so good!")
    }
    
    var body: some View {
        VStack {
            Button("Make Meoww"){
                print("Meoow")
            }
            
            Button(action: foodPrinter) {
                VStack{
                    Image("creature-cat-purple-cute")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                        
                    
                    Text("Feed Cat")
                }
            }
        }
    }
}

struct ButtonContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContentView()
    }
}
