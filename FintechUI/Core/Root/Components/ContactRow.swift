//
//  ContactRow.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

///  ContactRow
///
/// How to use it.
/// ```
/// ContactRow(contact: User)
/// ```
///  - Properties
///    - contact: User
///
struct ContactRow: View {
    // MARK: View Properties
    let contact: User
    
    var body: some View {
        HStack {
            UserPicture(user: contact, kind: .circular)
            
            VStack(alignment: .leading) {
                Text(contact.name)
                    .foregroundStyle(.white)
                
                if let cards = contact.cards {
                    Text(cards[0].last4DigitsTxt)
                        .foregroundStyle(.gray)
                        .font(.footnote)
                }
            }
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: 90))
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

// MARK: - Previews
#Preview {
    ContactRow(contact: User.MOCK_USERS[4])
        .background(.yellow)
}
