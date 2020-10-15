//
//  SwiftUI101App.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

@main
struct SwiftUI101App: App {
    
    private var user = User.exampleUser
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
