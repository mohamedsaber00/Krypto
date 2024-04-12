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
        
                List{
                    Text("Top Gainer").font(.title) .bold()
                
                    TabView{
                        ForEach(Array(viewmodel.assets.prefix(3))){ asset in
                            AssetHorizontalItem(asset: asset).padding([.leading,.trailing], 12).padding(.top,-20)
                        }
                        
                    }.frame(height: 200,alignment: .top).tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    
                    
                    ForEach(viewmodel.assets){ asset in
                        AssetItem(asset: asset).swipeActions{
                            Button("Add to favorite"){
                              addToFavorite(asset: asset)
                            }.tint(Color.blue)

                        }
                    }
                }.listStyle(InsetListStyle())
            }
    }
    
    
    func addToFavorite(asset: Asset){
    let favorite = FavoriteAsset(
        id: asset.id, rank: asset.rank, symbol: asset.symbol, name: asset.name, supply: asset.supply, maxSupply: asset.maxSupply, marketCapUsd: asset.marketCapUsd, volumeUsd24Hr: asset.volumeUsd24Hr, priceUsd: asset.priceUsd, changePercent24Hr: asset.changePercent24Hr, vwap24Hr: asset.vwap24Hr
    )
        modelContext.insert(favorite)
    }
}

#Preview {
    HomeView()
        .modelContainer(for: Item.self, inMemory: true)
}
