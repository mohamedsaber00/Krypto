//
//  AssetsServie.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
//

import Foundation
import Combine
import Alamofire



 let baseUrl : String = "https://api.coincap.io/v2/"

protocol AssetAPIProtocol {
    func getAsset() -> AnyPublisher<AssetsList, AFError>
}

struct AssetAPI: AssetAPIProtocol {
    func getAsset() -> AnyPublisher<AssetsList, AFError> {

        let url = URL(string: "\(baseUrl)assets")!

    /*    let parameters = [
            "q": quary,
            "per_page": perPage,
            "page": page,
        ] as [String : Any]
     */
        let headers: HTTPHeaders = [
            "Accept": "application/json"
        ]

        return AF.request(url,
                          method: .get,
                //          parameters: parameters,
                          headers: headers
                          )
            .validate()
            .publishDecodable(type: AssetsList.self)
            .value()
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
