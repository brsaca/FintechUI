//
//  BalanceView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI
import Charts

struct BalanceView: View {
    // MARK: View Properties
    let card: Card
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 26) {
                // NavBar
                NavBar
                
                // Total Balance
                TotalBalance
                
                // Months Filter
                MonthsFilter
                
                // Chart
                CustomChart
                    .padding(.vertical, 40)
                
                // Transactions
                Transactions
                
                Spacer()
            }
            .padding()
        }
        .background(.black)
    }
}

extension BalanceView {
    var NavBar: some View {
        HStack {
            ButtonWithIcon(type: .square, image: "arrow.backward", action: {
                dismiss()
            })
            
            Spacer()
            
            ButtonWithIcon(type: .square, image: "ellipsis", action: {})
        }
    }
    
    var TotalBalance: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Total balance")
                .font(.title2)
                .foregroundStyle(.gray)
            
            Text("$\(card.amount.formatToString())")
                .font(.system(size: 54))
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
    }
    
    var MonthsFilter: some View {
        HStack(spacing: 30) {
            Text("Day")
                .foregroundStyle(Color.cGreen)
            
            Text("Week")
                .foregroundStyle(.white)
            
            Text("Month")
                .foregroundStyle(.white)
            
            Text("Year")
                .foregroundStyle(.white)
        }
    }
    
    var CustomChart: some View {
        Chart{
            ForEach(ChartValue.data) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                         series: .value("Year", "2022"))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(Color.cGreen)
            }
            ForEach(ChartValue.data2) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                         series: .value("Year", "2021"))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(Color.cPurple)
            }
        }
    }
    
    var Transactions: some View {
        VStack(spacing: 6) {            RoundedRectangle(cornerRadius: 4)
                .frame(width: 80, height: 6, alignment: .center)
                .padding(.bottom, 10)
                .foregroundColor(.gray.opacity(0.5))
            
            HStack {
                Text("Transactions")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                
                Spacer()
                
                Text("See All")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
            }
            .foregroundStyle(.white)
            .padding(.horizontal)
            
            Spacer()
            
            if let transactions = User.myUser.transactions {
                LazyVStack {
                    ForEach(transactions) { transaction in
                        TransactionRow(transaction: transaction)
                    }
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.cYellow)
        )
    }
}

// MARK: - Previews
#Preview {
    BalanceView(card: Card.MOCK_CARDS[0])
}




