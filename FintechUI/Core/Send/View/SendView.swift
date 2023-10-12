//
//  SendView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

struct SendView: View {
    // MARK: View Properties
    let contact: User
    @Environment(\.dismiss) var dismiss
    @State var currentAmount:String = String()
    
    var formattedAmount: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        
        if let number = Double(currentAmount) {
            return formatter.string(from: NSNumber(value: number)) ?? "$0.00"
        }
        
        return "$0.00"
    }
    
    var body: some View {
        VStack(spacing: 26) {
            // NavBar
            NavBar
            
            // Contact
            ContactInfo
            
            // Amount
            TextField("$0.00", text: .constant(formattedAmount))
                .font(.system(size: 60))
                .foregroundColor(.white)
                .font(.headline)
                .multilineTextAlignment(.center)
                .disabled(true)
                .padding()
            
            // Pad
            NumberPad
            
            Spacer()
            // Button
            
            
        }
        .padding()
        .background(.black)
    }
}

extension SendView {
    var NavBar: some View {
        HStack {
            ButtonWithIcon(type: .square, image: "arrow.backward", action: {
                dismiss()
            })
            
            Spacer()
            
            Text("Send")
                .font(.title2)
                .fontWeight(.light)
                .foregroundStyle(.white)
            
            Spacer()
            
            ButtonWithIcon(type: .square, image: "bubble.left.and.text.bubble.right", action: {})
        }
    }
    
    var ContactInfo: some View {
        VStack(alignment: .center, spacing: 20){
            ZStack {
                UserPicture(user: contact, kind: .circular)
                
                CircularIcon(image: Operation.send.image, presentation: .send)
                    .offset(x: 26)
            }
            
            Text(contact.name)
                .font(.title2)
                .foregroundStyle(.white)
            
            if let card = contact.cards?[0] {
                Text(card.last4DigitsTxt)
                    .font(.callout)
                    .foregroundStyle(.gray)
                    .padding(.top, -10)
            }
        }
    }
    
    var NumberPad: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
            ForEach(Pads.allCases, id: \.self) { pad in
                DialPad(pad: pad, currentAmount: $currentAmount)
            }
        }
    }
}

// MARK: - Previews
#Preview {
    SendView(contact: User.MOCK_USERS[5])
}
