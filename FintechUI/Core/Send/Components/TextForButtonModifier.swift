//
//  TextForButtonModifier.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

struct TextForButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 24))
            .fontWeight(.regular)
            .foregroundColor(.black)
            .frame(width: 360, height: 60)
            .background(Color.cYellow)
            .cornerRadius(30)
    }
}
