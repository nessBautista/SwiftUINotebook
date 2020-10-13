//
//  ContentView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView: View {
    let tips = ["Dream of mice", "Make some origami", "Get the dog juggling"]
    var body: some View {
        VStack{
            ForEach(self.tips, id: \.self){ tip in
                VStack{
                    Image("meditate")
                        .resizable()
                        .scaledToFit()
                    Text("Cat relaxation tip numbre:\(tip)")
                }
            }            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
