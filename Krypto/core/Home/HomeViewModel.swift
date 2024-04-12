//
//  HomeViewModel.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
//

import Foundation
import Combine


class HomeViewModel : ObservableObject{
    
    @Published private(set) var assets = [Asset]()
    
    let servive : AssetAPIProtocol = AssetAPI()
    
    private var subscriptions: Set<AnyCancellable> = []
    
    init(){
        fetchAssets()
    }

    
    func fetchAssets(){
        servive.getAsset()    .sink {[weak self] completion in
            guard let self = self else { return }
            switch completion {
            case .failure(let error):
                print("Error: \(error)")
        
            case .finished:
                break
            }
        } receiveValue: {[weak self] value in
            guard let self = self else { return }
            assets = value.data
        }
        .store(in: &subscriptions)
}
    }

    

