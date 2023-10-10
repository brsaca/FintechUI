//
//  ButtonWithIcon.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI

enum TypeButton {
    case square
    case large
    
    var strokeColor: Color {
        switch self {
        case .square: return Color.cGray
        case .large: return .clear
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .square: return .clear
        case .large: return Color.cYellow
        }
    }
    
    var iconSize: CGSize {
        switch self {
        case .square: return CGSizeMake(30, 30)
        case .large: return CGSizeMake(20, 20)
        }
    }
    
    var iconColor: Color {
        switch self {
        case .square: return .white
        case .large: return .black
        }
    }
    
    var buttonSize: CGSize {
        switch self {
        case .square: return CGSizeMake(60, 60)
        case .large: return CGSizeMake(100, 200)
        }
    }
}

/// Buttons used in the custom navigation bar
///
/// How to use it.
/// ```
/// ButtonWithIcon(type:.square, image: "arrow.backward", action: {})
/// ```
/// - Parameter
///   - type: .square / .large
///   - image: String Image name from symbols
///   - action: call ontap
///
struct ButtonWithIcon: View {
    // MARK: View Properties
    let type: TypeButton
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 20)
                .stroke(type.strokeColor, lineWidth: 2)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(type.foregroundColor)
                        .overlay(
                            Image(systemName: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: type.iconSize.width, height: type.iconSize.height)
                                .foregroundColor(type.iconColor)
                        )
                )
                .frame(width: type.buttonSize.width, height: type.buttonSize.height)
        }
    }
}

// MARK: - Previews
#Preview("square") {
    ButtonWithIcon(type: .square, image: "ellipsis", action: {})
}

#Preview("large") {
    ButtonWithIcon(type: .large, image: "plus", action: {})
}
