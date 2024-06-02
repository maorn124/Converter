//
//  ContentView.swift
//  Converter
//
//  Created by Maor Niv on 6/2/24.
//

import SwiftUI

struct Converter: View {
    
    @ObservedObject var currencyViewModel = CurrencyConverterViewModel()
    @ObservedObject var cryptoViewModel = CryptoConverterViewModel()
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Picker("Select Converter", selection: $selection) {
                Text("Currency").tag(0)
                Text("Crypto").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if selection == 0 {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                        ForEach(currencyViewModel.listofCards) { card in CurrencyItem(card: card)
                            .onTapGesture {
                                currencyViewModel.flip(card: card)
                            }
                        }
                    }
                }
                .onAppear {
                    currencyViewModel.fetchCards()
                }
            } else {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                        ForEach(cryptoViewModel.listOfCryptoCards) { card in CryptoItem(card: card)
                            .onTapGesture {
                                cryptoViewModel.flip(card: card)
                            }
                        }
                    }
                }
                .onAppear {
                    cryptoViewModel.fetchCryptoCards()
                }
            }
        }
    }
}

#Preview {
    Converter()
}
