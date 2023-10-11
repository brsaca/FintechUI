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
    
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 26) {
                // NavBar
                NavBar
                
                // Total Balance
                TotalBalance
                
                // Chart
                CustomChart
                
                // Transactions
               // Transactions
                
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
            ButtonWithIcon(type: .square, image: "arrow.backward", action: {})
            
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
    
    /*var Transactions: some View {
        
    } */
}

// MARK: - Previews
#Preview {
    BalanceView(card: Card.MOCK_CARDS[0])
}




