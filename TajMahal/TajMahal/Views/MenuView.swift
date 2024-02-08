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
            NavigationStack {
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
                                
                .navigationTitle("Menu")
                // hide the default larger title
                .navigationBarTitleDisplayMode(.inline)
                

            }
        }
    }
}

#Preview {
    MenuView()
}
