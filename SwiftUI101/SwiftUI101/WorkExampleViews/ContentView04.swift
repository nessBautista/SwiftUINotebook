//
//  ContentView04.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI
//Example of a Form Component
struct ContentView04: View {
    @State private var selectedSnackIndex = 0
    @State private var isOn = false
    @State private var textValue = String()
    
    let treats = Treat.demoTreats
    
    var body: some View {
        NavigationView {
            Form {
                
                // A Section with a PIcker
                Section{
                    Picker(selection: $selectedSnackIndex, label: Text("Snack Type")){
                        ForEach(0..<self.treats.count) {
                            Text(self.treats[$0].name).tag($0 )
                        }
                    }
                }
                
                //Example of conditional Views: A Section with a toggle
                Section {
                    Toggle(isOn:$isOn){
                        Text("Would you like extra milk with the order")
                    }
                    
                    if isOn == true{
                        Text("Milk will cost an extra of $0.99")
                            .foregroundColor(.gray)
                            .font(Font.system(size:12))
                    }
                }
                
                //Input using textfields
                Section {
                    TextField("Special Requests", text: $textValue)
                }
                
                //A button to process the order
                Section {
                    Button(action: {
                        print("Processing order")
                    }){
                        HStack{
                            Image(systemName: "paperplane")
                                .foregroundColor(.blue)
                            Text("Place order")
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Order Kitty Snacks"))
        }
        
    }
}

struct ContentView04_Previews: PreviewProvider {
    static var previews: some View {
        ContentView04()
    }
}
