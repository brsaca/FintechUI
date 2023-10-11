//
//  Transaction.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import Foundation

enum Operation: String {
    case send
    case receive
    
    var image: String {
        switch self {
        case .send: return "arrow.up.backward.bottomtrailing.rectangle"
        case .receive: return "arrow.down.backward.toptrailing.rectangle"
        }
    }
}

struct Transaction: Identifiable {
    let id = UUID()
    let user: User
    let date: Date
    let operation: Operation
    let amount: Double
    
    var amountFormattedForTransaction: String {
        return "\(operation == .send ? "-" : "+")$\(amount.formatToString())"
    }
}

extension Transaction {
    static let MOCK_TRANSACTION: [Transaction] = [
        Transaction(user: User.MOCK_USERS[1], date: Utils.getDateFromString(for: "07-05-2023"), operation: .receive, amount: 1220.00),
        Transaction(user: User.MOCK_USERS[2], date: Utils.getDateFromString(for: "06-05-2023"), operation: .send, amount: 10.00),
        Transaction(user: User.MOCK_USERS[3], date: Utils.getDateFromString(for: "05-05-2023"), operation: .receive, amount: 120.00),
        Transaction(user: User.MOCK_USERS[4], date: Utils.getDateFromString(for: "04-05-2023"), operation: .send, amount: 345.50)
    ]
}
