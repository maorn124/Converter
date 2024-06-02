//
//  CurrencyItem.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {

            if card.isFront {
                FrontCurrencyItem(card: card.cardContent)
            } else {
                BackCurrencyItem(card: card.cardContent)
            }
    }
}

#Preview {
    CurrencyItem(card : ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multipler: 1)))
}

struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multipler))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}
