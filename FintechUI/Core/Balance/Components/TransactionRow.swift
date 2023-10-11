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
            ZStack {
                Circle()
                    .fill(Color.cGray)
                    .frame(width: 60, height: 60)
                
                Image(systemName: transaction.operation.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 20)
                    .foregroundColor(Color.cYellow)
            }
            
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
