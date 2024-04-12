//
//  FavoriteAssets.swift
//  Krypto
//
//  Created by Mohamed Saber on 12/04/2024.
//

import Foundation
import SwiftData

@Model
class FavoriteAsset {
    @Attribute(.unique)  var id: String
    var rank: String
    var symbol: String
    var name: String
    var supply: String
    var maxSupply: String?
    var marketCapUsd: String
    var volumeUsd24Hr: String
    var priceUsd: String
    var changePercent24Hr: String
    var vwap24Hr: String?
    
    init(id: String, rank: String, symbol: String, name: String, supply: String, maxSupply: String?, marketCapUsd: String, volumeUsd24Hr: String, priceUsd: String, changePercent24Hr: String, vwap24Hr: String?) {
        self.id = id
        self.rank = rank
        self.symbol = symbol
        self.name = name
        self.supply = supply
        self.maxSupply = maxSupply
        self.marketCapUsd = marketCapUsd
        self.volumeUsd24Hr = volumeUsd24Hr
        self.priceUsd = priceUsd
        self.changePercent24Hr = changePercent24Hr
        self.vwap24Hr = vwap24Hr
    }
}
