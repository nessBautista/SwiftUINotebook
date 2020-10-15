//
//  User.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

class User: ObservableObject {
  
  var imageName: String
  var name: String
  @Published var likedBooks: [Book]
  
  init(name: String, imageName: String, likedBooks: [Book] = []) {
    self.name = name
    self.imageName = imageName
    self.likedBooks = likedBooks
  }
}

extension User {
  static let exampleUser = User(name: "Ray", imageName: "Ray")
}
