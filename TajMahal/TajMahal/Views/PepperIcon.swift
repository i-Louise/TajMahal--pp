//
//  PepperIcon.swift
//  TajMahal
//
//  Created by Louise Ta on 12/02/2024.
//

import Foundation
import SwiftUI


// This view allows PepperIcon to be used in others screens
struct PepperIcon: View {
    let dish: Dish
    var body: some View {
        
        ForEach (1...3, id: \.self) { value in
            if dish.spiceLevel.rawValue >= value {
                Image(.pepper)
                    .renderingMode(.template)
                    .foregroundColor(Color(.customRed))
            } else {
                Image(.pepper)
            }
        }
    }
}
