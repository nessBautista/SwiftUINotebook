//
//  RelaxationTip.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/13/20.
//

import SwiftUI

struct RelaxationTip: Identifiable {
  var id = UUID()
  var imageName: String
  var tip: String
}

extension RelaxationTip {
  static let demoTips: [RelaxationTip] = [
    RelaxationTip(imageName: "meditate", tip: "Meditate with your human pet"),
    RelaxationTip(imageName: "Juggle", tip: "Juggle for a while"),
    RelaxationTip(imageName: "DreamOfMice", tip: "Dream of mice"),
    RelaxationTip(imageName: "Origami", tip: "Make some Origami"),
    RelaxationTip(imageName: "MakeDogJuggle", tip: "Get the dog juggling")
  ]
}
