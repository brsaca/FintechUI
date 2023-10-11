//
//  CardView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI

///  CardView
///
/// How to use it.
/// ```
/// CardView(card: card)
/// ```
///  - Properties
///    - card: Card
///
struct CardView: View {
    //MARK: View Properties
    let card: Card
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(card.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height:80)
                
                Spacer()
                
                Text("**** \(card.last4Digits)")
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                    .padding(.top, 20)
            }
            
            
            Spacer()
            
            HStack(alignment: .bottom, spacing: 0) {
                Text("$")
                    .font(.footnote)
                    .padding(.bottom, 3)
                
                Text("\(card.amountInIntegers)")
                    .font(.title2)
                
                Text(".\(card.amountInDecimals)")
                    .font(.footnote)
                    .padding(.bottom, 3)
                
                Spacer()
            }
            .fontWeight(.semibold)
            .foregroundStyle(card.textColor)
        }
        .padding(.bottom, 20)
        .padding(.horizontal, 20)
        .frame(width: 250, height: 140)
        .background(card.backgroundColor)
        .cornerRadius(20)
    }
}

// MARK: - Previews
#Preview("mc") {
    CardView(card: Card.MOCK_CARDS[0])
}

#Preview("visa") {
    CardView(card: Card.MOCK_CARDS[1])
}
