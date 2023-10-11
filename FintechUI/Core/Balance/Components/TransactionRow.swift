//
//  TransactionRow.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

struct TransactionRow: View {
    // MARK: View Properties
    let transaction: Transaction
    
    var body: some View {
        HStack {
            CircularIcon(image: transaction.operation.image, presentation: .transaction)
            
            VStack(alignment: .leading) {
                Text(transaction.user.name)
                    .foregroundStyle(Color.cGray)
                
                Text(Utils.getDateFormatted(for: transaction.date))
                    .foregroundStyle(.gray)
                    .font(.footnote)
            }
            
            Spacer()
            
            Text(transaction.amountFormattedForTransaction)
                .fontWeight(.semibold)
                .foregroundStyle(Color.cGray)
            
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
    
}

// MARK: - Previews
#Preview {
    TransactionRow(transaction: Transaction.MOCK_TRANSACTION[0])
        .background(Color.cYellow)
}
