//
//  Treat.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//


import SwiftUI

struct Treat: Identifiable {
  var id = UUID()
  var name: String
  var imageName: String
  var description: String
}

extension Treat {
  static let demoTreats = [
    Treat(name: "Fish Cakes", imageName: "FlyingFish", description: "Lots of fish, lots of cakes!"),
    Treat(name: "Mice Cream", imageName: "creature-square-mouse", description: "Every kitty's favorite flavored Ice Cream"),
    Treat(name: "Croissant", imageName: "food-pastry-croissant", description: "Seems like cats wouldn't like them, but they do!"),
    Treat(name: "Pancakes", imageName: "food-pancakes", description: "They're cakes, but in the shape of a pan")
  ]
}
