//
//  ConverterViewModel.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import Foundation

class CurrencyConverterViewModel : ObservableObject {
    
    @Published private(set) var listofCards = [ConvertModel<CurrencyItemModel>]()
    
    func fetchCards() {
        self.listofCards = [
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multipler: 1)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", countryFlag: "🇨🇳", multipler: 6.94)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Candian Dollar", currencyCode: "CAD", countryFlag: "🇨🇦", multipler: 1.36)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", countryFlag: "🇦🇺", multipler: 1.49)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", countryFlag: "🇮🇳", multipler: 82.60)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", countryFlag: "🇨🇱", multipler: 832.04)),
        ]
    }
    
    func flip(card: ConvertModel<CurrencyItemModel>) {
        let index = findIndex(card: card)
        listofCards[index!].isFront.toggle()
    }
    
    func findIndex(card: ConvertModel<CurrencyItemModel>) -> Int? {
        for index in 0..<listofCards.count {
            if card.id == listofCards[index].id {
                return index
            }
        }
        return nil
    }
}
