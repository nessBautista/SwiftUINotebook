//
//  User.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import SwiftUI

struct User {
  
  var imageName: String
  var name: String
  var likedBooks: [Book]
  
  init(name: String, imageName: String, likedBooks: [Book] = []) {
    self.name = name
    self.imageName = imageName
    self.likedBooks = likedBooks
  }
}

extension User {
  static let exampleUser = User(name: "Ray", imageName: "Ray")
}
