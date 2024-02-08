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
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(40)
                    .padding(.horizontal)
                
                HStack {
                    PepperIcon(dish: dish)
                }
                .padding(5.0)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                .padding([.top, .trailing])
            }
            .frame(width: 335, height: 467, alignment: .topTrailing)
            
            VStack(alignment: .leading) {
                Spacer()
                Text("Allergènes")
                    .font(.system(size: 15))
                Spacer()
                Text(dish.allergens)
                    .font(.system(size: 12))
                Divider()
                Text("Ingrédients:")
                Spacer()
                    .font(.system(size: 15))
                Text(dish.ingredients)
                    .font(.system(size: 12))
                Spacer()
                
            }
            .navigationTitle(dish.name)
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding(.horizontal)
    }
    
}

#Preview {
    DishDetailView(dish: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "13.00"))
}
