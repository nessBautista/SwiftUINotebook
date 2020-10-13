//
//  ContentView01.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView01: View {
    //Example of KeyPath using a simple string array
    /*
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
    */
    //Using a more complex model and the identifiable protocol
    
    var body: some View {
        VStack{
            ForEach(RelaxationTip.demoTips){ tipModel in
                VStack{
                    Image(tipModel.imageName)
                        .resizable()
                        .scaledToFit()
                    Text("Cat relaxation tip: \(tipModel.tip)")
                }
            }
        }
    }
}

#if DEBUG
struct ContentView01_Previews: PreviewProvider {
    static var previews: some View {
        ContentView01()
    }
}
#endif
