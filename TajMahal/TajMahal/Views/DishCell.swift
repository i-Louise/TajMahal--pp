//
//  DishSpice.swift
//  TajMahal
//
//  Created by Louise Ta on 05/02/2024.
//

import Foundation
import SwiftUI

struct DishCell: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 86)
                .cornerRadius(4)
            VStack {
                Text(dish.name)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                    .frame(width: 0.0, height: 12.0)
                Text(dish.description)
                    .font(.system(size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                    .frame(width: 0.0, height: 12.0)
                
                HStack {
                    Text(dish.price + "€")
                        .font(.system(size: 12))
                    Spacer()
                    
                    // Spice level icons
                    if dish.spiceLevel == SpiceLevel.light {
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                        Image(.pepper)
                        Image(.pepper)
                    } else if dish.spiceLevel == SpiceLevel.medium {
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                        Image(.pepper)
                    } else if dish.spiceLevel == SpiceLevel.hot {
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                        Image(.pepper)
                            .renderingMode(.template)
                            .foregroundColor(Color(.customRed))
                    }
                }
            }
        }
    }
}

