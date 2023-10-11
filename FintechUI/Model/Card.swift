//
//  Card.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import Foundation
import SwiftUI

///  Card
///
///  - Properties
///    - id: UUID
///    - last4Digits: last digits of the card
///    - image: icon of the card
///    - amount: available amount
///
struct Card: Identifiable {
    let id = UUID()
    let last4Digits: String
    let image: String
    let amount: Double
    
    var backgroundColor: Color {
        return image == "mc" ? .white : Color.cPurple
    }
    
    var textColor: Color {
        return image == "mc" ? .black : .white
    }
    
    var amountInIntegers: Int {
        return amount.separateAmount().integers
    }
    
    var amountInDecimals: Int {
        return amount.separateAmount().decimals
    }
}

extension Card {
    static let MOCK_CARDS: [Card] = [
        Card(last4Digits: "4934", image: "mc", amount: 13397.23),
        Card(last4Digits: "9876", image: "visa", amount: 27987.70),
    ]
}
