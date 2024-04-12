//
//  FavoritesView.swift
//  Krypto
//
//  Created by Mohamed Saber on 11/04/2024.
//

import SwiftUI
import SwiftData

struct FavoritesView: View {
    
    @Query var favorites : [FavoriteAsset]
    
    @Environment(\.modelContext) private var modelContext

    
    
    var body: some View {
        List{
            Text("Favorites").font(.title) .bold()

            ForEach(favorites){ favorites in
                let favoriteAsset = Asset(id: favorites.id, rank: favorites.rank, symbol: favorites.symbol, name: favorites.name, supply: favorites.supply, maxSupply: favorites.maxSupply, marketCapUsd: favorites.marketCapUsd, volumeUsd24Hr: favorites.volumeUsd24Hr, priceUsd: favorites.priceUsd, changePercent24Hr: favorites.changePercent24Hr, vwap24Hr: favorites.vwap24Hr)
                AssetItem(asset:favoriteAsset ).swipeActions{
                    Button("Delete"){
                        modelContext.delete( favorites)
                    }.tint(Color.red)

                }
            }
        }.listStyle(InsetListStyle())
        }
    }
    

#Preview {
    FavoritesView()
}
