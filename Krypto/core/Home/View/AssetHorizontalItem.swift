//
//  AssetHorizontalItem.swift
//  Krypto
//
//  Created by Mohamed Saber on 11/04/2024.
//

import SwiftUI

struct AssetHorizontalItem: View {
    let asset : Asset

    var body: some View {
        
        
        HStack{
            
            HStack{

                AssetImageView(symbol: asset.symbol.lowercased())
                    .scaledToFit()
                    .frame(width: 96, height: 96)
                    .padding(.leading, -4)
            }            .frame(alignment: .leading)

            
            VStack(alignment: .leading,spacing:0){
                Text(asset.name)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .frame(alignment: .trailing)
                
                Text(asset.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .frame(alignment: .leading)
             
                Spacer().frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: 20)
            }
            
    
            
            
            VStack{
                Text("\( Double(asset.priceUsd)?.toUSDCurrencyFormatted() ?? "0,000")").lineLimit(1)
                
                Text("Volume: \( Double(asset.volumeUsd24Hr)?.formattedWithAbbreviations() ?? "0,000")").font(.system(size: 12)).foregroundColor(.gray).lineLimit(1)
                
            }
    
            
        }.padding(.horizontal,4)
        
        
    }
}

struct AssetHorizontalItem_Previews: PreviewProvider {
    static var previews: some View {
        AssetHorizontalItem(
            asset: dev.assets
        )
    }
}
