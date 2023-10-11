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
    
    var imageSize: CGSize {
        switch self {
        case .rectangular: return CGSizeMake(60, 60)
        case .circular: return CGSizeMake(50, 50)
        }
    }
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
            .frame(width: kind.imageSize.width, height: kind.imageSize.height)
    }
}

// MARK: - Previews
#Preview("rectangular") {
    UserPicture(user: User.myUser, kind: .rectangular)
}

#Preview("circular") {
    UserPicture(user: User.MOCK_USERS[0], kind: .circular)
}
