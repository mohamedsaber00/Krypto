//
//  AssetItem.swift
//  Krypto
//
//  Created by Mohamed Saber on 10/04/2024.
//

import SwiftUI

struct AssetItem: View {
    let asset : Asset
    
    var body: some View {
        
        HStack{
            
            HStack{
            
                Text("\(asset.rank)")   .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .frame(width: 30, alignment: .trailing)

                
                
                AssetImageView(symbol: asset.symbol.lowercased())
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.leading, -4)
            }            .frame(alignment: .leading)

            
            VStack(alignment: .leading,spacing:0){
                Text(asset.name)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .frame(alignment: .leading)
                
                Text(asset.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .frame(alignment: .leading)
                
            }
            
            Spacer().frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 50)
            
            
            VStack{
                Text("\( Double(asset.priceUsd)?.toUSDCurrencyFormatted() ?? "0,000")").lineLimit(1)
                
                Text("Volume: \( Double(asset.volumeUsd24Hr)?.formattedWithAbbreviations() ?? "0,000")").font(.system(size: 12)).foregroundColor(.gray).lineLimit(1)
                
            }
    
            
        }.padding(.horizontal,4)
        
        
    }
}

struct AssetItem_Previews: PreviewProvider {
    static var previews: some View {
        AssetItem(
            asset: dev.assets
        )
    }
}
