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
                    .frame(width: 335, height: 390, alignment: .center)
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
            
            // Dish allergens infos
            .padding()
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
            .frame(width: 335, height: 335, alignment: .center)
        }
    }
}

#Preview {
    DishDetailView(dish: Dish(name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", ingredients: "Pommes de terre, épices, farine de pois chiches", spiceLevel: .medium, imageName: "Aloo", price: "5.50"))
}
