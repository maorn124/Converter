//
//  CryptoConverterViewModel.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import Foundation

class CryptoConverterViewModel: ObservableObject {
    
    @Published private(set) var listOfCryptoCards = [ConvertModel<CryptoItemModel>]()
    
    func fetchCryptoCards() {
        self.listOfCryptoCards = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Bitcoin", crpytoCode: "BTC", multipler: 68000)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", crpytoCode: "ETH", multipler: 2000)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Litecoin", crpytoCode: "LTC", multipler: 150)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ripple", crpytoCode: "XRP", multipler: 0.5)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Dogecoin", crpytoCode: "DOGE", multipler: 0.07)),
        ]
    }
    
    func flip(card: ConvertModel<CryptoItemModel>) {
        if let index = findIndex(card: card) {
            listOfCryptoCards[index].isFront.toggle()
        }
    }
    
    private func findIndex(card: ConvertModel<CryptoItemModel>) -> Int? {
        for index in 0..<listOfCryptoCards.count {
            if card.id == listOfCryptoCards[index].id {
                return index
            }
        }
        return nil
    }
}

