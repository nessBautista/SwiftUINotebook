//
//  ContentView00.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct ContentView00: View {
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
struct ContentView00_Previews: PreviewProvider {
    static var previews: some View {
        ContentView00()
    }
}
#endif
