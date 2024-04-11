//
//  ContentView.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @StateObject private var viewmodel = HomeViewModel()

    var body: some View {
        
        TabView{
            
            HomeView().tabItem {
                
           Text("Currencies")
                Image(systemName: "dollarsign.circle")
                
            }
            
            FavoritesView().tabItem {
               Text("Favorites")
                     Image(systemName: "heart.fill")
                 }
            }
        }
    }


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
