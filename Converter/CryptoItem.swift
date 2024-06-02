//
//  CryptoItem.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import SwiftUI

struct CryptoItem: View {
    
    var card: ConvertModel<CryptoItemModel>
    
    var body: some View {
        if card.isFront {
            FrontCryptoItem(card: card.cardContent)
        } else {
            BackCryptoItem(card: card.cardContent)
        }
    }
}

#Preview {
    CryptoItem(card: ConvertModel(cardContent: CryptoItemModel(cryptoName: "", crpytoCode: "", multipler: 1)))
}

struct FrontCryptoItem: View {
    
    var card: CryptoItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.crpytoCode)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.cryptoName)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.orange)
    }
}

struct BackCryptoItem: View {
    
    var card: CryptoItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.cryptoName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multipler))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.orange)
    }
}

