//
//  NavBarButton.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI

/// Buttons used in the custom navigation bar
///
/// How to use it.
/// ```
/// NavBarButton(image: "arrow.backward")
/// ```
/// - Parameter
///   - image: String Image name from symbols
///   - action: call ontap
///
struct NavBarButton: View {
    // MARK: View Properties
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.cGray, lineWidth: 2)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.clear)
                        .overlay(
                            Image(systemName: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        )
                )
                .frame(width: 60, height: 60)
        }
    }
}

// MARK: - Previews
#Preview {
    NavBarButton(image: "ellipsis", action: {})
}
