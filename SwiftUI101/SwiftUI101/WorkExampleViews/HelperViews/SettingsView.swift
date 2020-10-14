//
//  SettingsView.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct SettingsView: View {
    var user:User
    var body: some View {
        NavigationView{
            List {
                Section(header:Text("User")){
                    Text(user.name)
                }
                Section(header: Text("Liked Books")) {
                    ForEach(user.likedBooks) { book in
                        HStack{
                            Image(book.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width:100, height:100)
                            Text(book.title)
                                .font(Font.system(.body))
                        }
                        
                    }
                }
                                
            }
            .listStyle(GroupedListStyle())
                .navigationBarTitle("User Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(user:User.exampleUser)
    }
}
