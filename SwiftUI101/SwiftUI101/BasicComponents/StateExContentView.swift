//
//  StateExContentView.swift
//  SwiftUI_Intro
//
//  Created by Nestor Javier Hernandez on 10/9/20.
//  Copyright © 2020 Nestor Javier Hernandez. All rights reserved.
//

import SwiftUI

struct StateExContentView: View {
    @State private var orderCount = 0
    @State private var houseTemperature: Double = 0
    @State private var isActivated = true
    @State private var pickedDate = Date()
    private var isActivatedMessage: String {
        return self.isActivated ? "Activated": "Deactivated"
    }
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter
    }
    
    var body: some View {
        
        VStack {
//            Stepper(
//                onIncrement: {
//                    self.orderCount += 1
//                },
//                onDecrement: {
//                    self.orderCount -= 1
//                },
//                label: {
//                    Text("Set Order Amount")
//                })
            Stepper("Set order amount", value: $orderCount)
            Text("Current Order amount: \(self.orderCount)")
            Slider(value: $houseTemperature, in: 15...30)
            Text("\(self.houseTemperature)")
            Toggle("Activate  Cat Nip!", isOn: $isActivated)
            Text(isActivatedMessage)
                .foregroundColor(isActivated ? .green : .red)
                .fontWeight(isActivated ? .bold : .regular)
            
            Toggle(isOn:$isActivated){
                VStack{
                    Image("creature-cat-derp")
                        .resizable()
                        .frame(width:100, height:100)
                    Text("Activate Cat")
                }
            }
            
//            DatePicker(selection: $pickedDate, displayedComponents: [.date]){
//                Text("Select Date")
//            }
            DatePicker(selection: $pickedDate,
                       in: ClosedRange(uncheckedBounds: (lower: Date(), upper:Date(timeIntervalSinceNow: 900000))),
                       displayedComponents: .date){
                Text("Select Date")
            }
            
            Text("\(self.dateFormatter.string(from: pickedDate))")
        }
        
    }
}

struct StateExContentView_Previews: PreviewProvider {
    static var previews: some View {
        StateExContentView()
            
    }
}
