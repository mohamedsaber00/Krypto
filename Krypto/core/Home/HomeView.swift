//
//  HomeView.swift
//  Krypto
//
//  Created by Mohamed Saber on 11/04/2024.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    
    @StateObject private var viewmodel = HomeViewModel()

    var body: some View {
        
        
        VStack{
    
            
            ScrollView{
                
                TabView{
                    ForEach(Array(viewmodel.assets.prefix(3))){ asset in
                        AssetItem(asset: asset)
                    }
                    
                }.frame(height: 200).tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
             
                
                ForEach(viewmodel.assets){ asset in
                    AssetItem(asset: asset)
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .modelContainer(for: Item.self, inMemory: true)
}
