//
//  DishDetail.swift
//  TajMahal
//
//  Created by Louise Ta on 07/02/2024.
//

import Foundation
import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        NavigationStack {
            
            ZStack (alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 335, height: 400, alignment: .center)
                    // Crop the image
                    .clipped()
                    .cornerRadius(10)

                HStack {
                    PepperIcon(dish: dish)
                }
                .padding(5.0)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                // margin between spice level and picture
                .padding([.top, .trailing], 10)
            }
            .frame(width: 335, height: 335, alignment: .center)
            
            // Dish allergens infos
            Spacer()
            VStack(alignment: .leading) {
                
                Text("Allergènes :")
                    .font(.system(size: 15))
                Spacer()
                    .frame(height: 20)
                Text(dish.allergens)
                    .font(.system(size: 12))
                Spacer()
                    .frame(height: 20)
                Divider()
                // Ingredients
                Spacer()
                    .frame(height: 20)
                Text("Ingrédients :")
                    .font(.system(size: 15))
                Spacer()
                    .frame(height: 20)
                Text(dish.ingredients)
                    .font(.system(size: 12))
                Spacer()
            }
            
            .navigationTitle(dish.name)
            .navigationBarTitleDisplayMode(.inline)
            .frame(width: 335, height: 300, alignment: .center)
        }
    }
}

#Preview {
    DishDetailView(dish: Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5.50"))
}
