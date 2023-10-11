//
//  User.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import Foundation

///  User
///
///  - Properties
///    - id: UUID
///    - name: full name
///    - image: profile image
///
struct User:Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let cards: [Card]?
}

extension User {
    static let myUser = User(name: "Camilla Sounds", image: "woman1", cards: [Card.MOCK_CARDS[0], Card.MOCK_CARDS[1]])
    
    static let MOCK_USERS: [User] = [
        User(name: "Benjamin Parker", image: "man1", cards: [Card.MOCK_CARDS[0], Card.MOCK_CARDS[1]]),
        User(name: "Emma Davis", image: "woman2", cards: [Card.MOCK_CARDS[2]]),
        User(name: "Olivia Williams", image: "woman3", cards: [Card.MOCK_CARDS[3]]),
        User(name: "Ethan Jonhson", image: "man2", cards: [Card.MOCK_CARDS[4]]),
        User(name: "Jonas Trevor", image: "man3", cards: [Card.MOCK_CARDS[5]]),
        User(name: "Emma Colleman", image: "woman4", cards: [Card.MOCK_CARDS[6]]),
    ]
}
