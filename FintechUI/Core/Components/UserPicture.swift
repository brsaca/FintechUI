//
//  UserPicture.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI


enum kindPicture {
    case rectangular
    case circular
}

/// User picture with two kinds circle or rectangular
///
/// How to use it.
/// ```
/// UserPicture(user: user, kind: .rectangular)
/// ```
/// - Parameter
///   - user: model User
///   - kind: .rectangular /.circle
///   
struct UserPicture: View {
    // MARK: View Properties
    let user: User
    let kind: kindPicture
    
    var body: some View {
        if kind == .rectangular {
            imageContainer
                .clipShape(RoundedRectangle(cornerRadius: 12))
        } else {
            imageContainer
                .clipShape(Circle())
        }
    }
}

extension UserPicture {
    var imageContainer: some View {
        Image(user.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
    }
}

// MARK: - Previews
#Preview("rectangular") {
    UserPicture(user: User.myUser, kind: .rectangular)
}

#Preview("circular") {
    UserPicture(user: User.MOCK_USERS[0], kind: .circular)
}
