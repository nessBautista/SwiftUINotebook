//
//  ContentView02.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct ContentView02: View {
    let tips = RelaxationTip.demoTips
    @State private var selectedPickerIndex = 0
    //Example of usage of a picker
    var body: some View {
        Picker(selection: $selectedPickerIndex, label: Text("Relation Actions"), content: /*@START_MENU_TOKEN@*/{
            ForEach(0..<tips.count){ index in
                HStack{
                    Image(self.tips[index].imageName)
                        .resizable()
                        .scaledToFit()
                    Text(self.tips[index].tip)
                    
                }
            }
        }/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView02_Previews: PreviewProvider {
    static var previews: some View {
        ContentView02()
    }
}
