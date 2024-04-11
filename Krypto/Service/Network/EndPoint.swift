//
//  EndPoint.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
//

import Foundation


protocol EndPoint{
    var baseURL: String { get }
    var path: String { get }
    var body: String { get }
}

extension EndPoint {
    
    var baseURL: String {
        return "https://api.coincap.io/v2/"
    }
}

enum CryptoEndpoint : CaseIterable{
   
    case assets
    
    
    var headerTitle : String {
        switch self {
        case .assets :
            return "Assets"
        }
    }
}

extension CryptoEndpoint : EndPoint{
    var path: String {
        switch self {
        case .assets : return "assets/"
        }
    }
    
    var body: String {
        switch self {
        case .assets : return ""
        }
    }
    
    
    
}



