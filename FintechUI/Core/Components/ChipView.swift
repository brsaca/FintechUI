//
//  ChipView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI

/// Chip Options
///
/// How to use it.
/// ```
/// ChipView(title: "Activity", action: {})
/// ```
/// - Parameter
///   - title: title of the Section
///   - action: call
///
struct ChipView: View {
    // MARK: View Properties
    let title: String
    let action: () -> Void
    @State private var isSelected = false
    
    var body: some View {
        Text(title)
            .font(.footnote)
            .foregroundStyle(isSelected ? .black : .white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(isSelected ? Color.cGreen : .clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.cGreen, lineWidth: 1)
                    )
            )
            .onTapGesture {
                isSelected.toggle()
                if isSelected {
                    action()
                }
            }
    }
}

// MARK: - Previews
#Preview {
    ChipView(title: "Sale", action:{})
}
