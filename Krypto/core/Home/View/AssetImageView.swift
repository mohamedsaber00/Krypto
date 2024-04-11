//
//  AssetImageView.swift
//  Krypto
//
//  Created by Mohamed Saber on 10/04/2024.
//

import SwiftUI

struct AssetImageView: View {
    
    let symbol: String
    
    var body: some View {
        AsyncImage(url: URL(string: "https://assets.coincap.io/assets/icons/\(symbol)@2x.png")){ image in
            image.image?.resizable()
        }
    }
}

#Preview {
    AssetImageView(symbol: "btc")
}
