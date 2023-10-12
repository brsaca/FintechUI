//
//  TextFieldModifier.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 60))
            .foregroundColor(.white)
            .font(.headline)
            .multilineTextAlignment(.center)
            .disabled(true)
            .padding()
    }
}
