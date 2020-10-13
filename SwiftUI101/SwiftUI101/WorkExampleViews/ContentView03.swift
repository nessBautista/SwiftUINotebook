//
//  ContentView03.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI
//Very simple example of a List
struct ContentView03: View {
    var body: some View {
        List {
            Section(header: Text("Main Treats"), footer: Text("More comming soon....")){
                ForEach(0..<5) { Text("\($0)").tag($0) }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView03_Previews: PreviewProvider {
    static var previews: some View {
        ContentView03()
    }
}
