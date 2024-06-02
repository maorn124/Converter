//
//  ConvertModel.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import Foundation

struct ConvertModel<SomeType> : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multipler : Double
}

struct CryptoItemModel {
    let cryptoName : String
    let crpytoCode : String
    let multipler : Double
}
