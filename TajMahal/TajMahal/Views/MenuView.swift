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
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                DishCell(dish: dish)
                            }
                        }
                        // hide the divider between rows
                        .listRowSeparator(.hidden)
                        .listRowBackground(
                            Rectangle()
                                 .fill(Color(.white).opacity(1))
                                 .cornerRadius(10.0)
                                 .padding(4))
                    } header: {
                        Text("Entrées")
                        // Opt-out from SwiftUI List section default header uppercase text style
                            .textCase(nil)
                            .bold()                        
                    }
                    
                    // Create the second section for the main courses
                    Section {
                        ForEach(viewModel.mainCourseArray) { dish in
                            NavigationLink(destination: DishDetailView(dish: dish)) {
                                DishCell(dish: dish)
                            }
                        }
                        .listRowSeparator(.hidden)
                        .listRowBackground(
                            Rectangle()
                                 .fill(Color(.white).opacity(1))
                                 .cornerRadius(10.0)
                                 .padding(4))
                    } header: {
                        Text("Plats Principaux")
                            .textCase(nil)
                            .bold()
                    }
                    
                }
                .navigationTitle("Menu")
                // replace the default larger title
                .navigationBarTitleDisplayMode(.inline)
                // clear the default list background colour
                .scrollContentBackground(.hidden)
                // background color set
                .background(Color(red: 241/255, green: 241/255, blue: 241/255))

            }
        }
    }
}

#Preview {
    MenuView()
}
