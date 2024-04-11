//
//  Asset.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
//

import Foundation

struct Asset: Codable, Identifiable {
    let id: String
    let rank: String
    let symbol: String
    let name: String
    let supply: String
    let maxSupply: String?
    let marketCapUsd: String
    let volumeUsd24Hr: String
    let priceUsd: String
    let changePercent24Hr: String
    let vwap24Hr: String?
    
    enum CodingKeys: String, CodingKey {
        case id, rank, symbol ,name, supply, marketCapUsd, volumeUsd24Hr, priceUsd, changePercent24Hr, vwap24Hr
        case maxSupply = "maxSupply"
    }
}
