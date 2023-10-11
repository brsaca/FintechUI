//
//  CircularIcon.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

enum PresentationIcon {
    case transaction
    case send
    
    var circleColor: Color {
        switch self {
        case .transaction: return Color.cGray
        case .send: return Color.cYellow
        }
    }
        
    var iconColor: Color {
        switch self {
        case .transaction: return Color.cYellow
        case .send: return Color.cGray
        }
    }
    
    var circleSize: CGSize {
        switch self {
        case .transaction: return CGSize(width: 60, height: 60)
        case .send: return CGSize(width: 50, height: 50)
        }
    }
    
    var iconSize: CGSize {
        switch self {
        case .transaction: return CGSize(width: 25, height: 25)
        case .send: return CGSize(width: 20, height: 20)
        }
    }
}

/// Circular icon
///
/// How to use it.
/// ```
/// CircularIcon(image: "arrow.up.backward.bottomtrailing.rectangle", presentation: .transaction)
/// ```
/// - Parameter
///   - image: systemName
///   - presentation: .transaction /.send
///
struct CircularIcon: View {
    //MARK: View Properties
    let image: String
    let presentation: PresentationIcon
    
    var body: some View {
        ZStack {
            Circle()
                .fill(presentation.circleColor)
                .frame(width: presentation.circleSize.width, height: presentation.circleSize.height)
            
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: presentation.iconSize.width, height: presentation.iconSize.height)
                .foregroundColor(presentation.iconColor)
        }
    }
}

// MARK: - Previews
#Preview("transaction icon") {
    CircularIcon(image: "arrow.up.backward.bottomtrailing.rectangle", presentation: .transaction)
}

#Preview("send icon") {
    CircularIcon(image: "arrow.up.backward.bottomtrailing.rectangle", presentation: .send)
}
