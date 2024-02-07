//
//  MenuView.swift
//  TajMahal
//
//  Created by Louise Ta on 06/02/2024.
//

import Foundation
import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section {
                        ForEach(viewModel.apetizerArray) { dish in
                            DishCell(dish: dish)
                        }
                    } header: {
                        Text("Entrées")
                        // Opt-out from SwiftUI List section default header uppercase text style
                            .textCase(nil)
                            .bold()
                        
                    }
                    
                    // Create the second section for the main courses
                    Section {
                        ForEach(viewModel.mainCourseArray) { dish in
                            DishCell(dish: dish)
                        }
                    } header: {
                        Text("Plats Principaux")
                            .textCase(nil)
                            .bold()
                    }
                }
                
                .listRowSpacing(15.0)
                .navigationTitle("Menu")
                // hide the default larger title
                .navigationBarTitleDisplayMode(.inline)

            }
        }
    }
}

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

    

    
    #Preview {
        MenuView()
    }

