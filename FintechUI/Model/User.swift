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
struct User {
    let id = UUID()
    let name: String
    let image: String
}

extension User {
    static let myUser = User(name: "Camilla Sounds", image: "woman1")
    
    static let MOCK_USERS: [User] = [
        User(name: "Benjamin Parker", image: "man1"),
        User(name: "Emma Davis", image: "woman2"),
        User(name: "Olivia Williams", image: "woman3"),
        User(name: "Ethan Jonhson", image: "man2"),
        User(name: "Jonas Trevor", image: "man3"),
        User(name: "Emma Colleman", image: "woman4"),
    ]
}
