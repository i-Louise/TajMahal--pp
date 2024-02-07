//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI
import UIKit

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // Main image
                Image("TajMahal")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                // separation of image and the infos
                Spacer()
                
                // Restaurant infos
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)
                        Text("Taj Mahal")
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                    }
                    Spacer()
                    Image("Logo")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                // details
                HStack {
                    Label("Mardi", systemImage: "clock")
                    Spacer()
                    Text("11h30 - 14h30・18h30 - 22h00")
                }
                .font(.system(size: 12))
                
                Divider()
                    .overlay(.white)
                
                HStack {
                    Label("Type de Service", systemImage: "clock")
                    Spacer()
                    Text("À emporter")
                }
                .font(.system(size: 12))
                
                Divider()
                    .overlay(.white)
                
                HStack {
                    Label("12 Avenue de la Brique - 75010 Paris", systemImage: "clock")
                    Spacer()
                }
                .font(.system(size: 12))
                
                Divider()
                    .overlay(.white)
                
                HStack {
                    Label("www.tajmahal.fr", systemImage: "clock")
                    Spacer()
                }
                .font(.system(size: 12))
                
                Divider()
                    .overlay(.white)
                
                HStack {
                    Label("06 12 34 56 78", systemImage: "clock")
                    Spacer()
                }
                .font(.system(size: 12))
                
                Divider()
                    .overlay(.white)
                
                Spacer()
                
                // Button for user to access the menu screen
                NavigationLink {
                    MenuView()
                } label : {
                    Text("Accéder au menu")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 335, height: 40, alignment: .center)
                        .background(Color("CustomRed"))
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
    }
}
    
#Preview {
    WelcomeView()
}
