//
//  DishDetail.swift
//  TajMahal
//
//  Created by Louise Ta on 07/02/2024.
//

import Foundation
import SwiftUI

struct DishDetailView: View {
    let viewModel: ViewModel = ViewModel()
    let dish: Dish
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(dish.imageName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 335, height: 467)
                    .cornerRadius(40)
                                
                HStack {
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
                .padding(5.0)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
            }
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
