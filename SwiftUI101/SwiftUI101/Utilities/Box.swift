//
//  Box.swift
//  SwiftUI101
//
//  Created by Nestor Javier Hernandez on 10/14/20.
//

import Foundation
//This is just a generic wrapper
final class Box<Value> {
  var value: Value

  init(_ value: Value) {
    self.value = value
  }
}
