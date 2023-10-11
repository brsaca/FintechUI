//
//  ButtonWithIconAndTitle.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI


struct ButtonWithIconAndTitle: View {
    // MARK: View Properties
    let image: String
    let title: String
    let action: () -> Void
    
    private var buttonWidth: CGFloat {
        return (UIScreen.main.bounds.size.width - 40) / 3
    }
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center){
                Spacer()
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.white)
                
                Text(title)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.cGreen)
                
                Spacer()
            }
            Spacer()
        }
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.cGray)
        )
        .frame(width: buttonWidth, height: 80)
    }
}

// MARK: - Previews
#Preview("Send") {
    ButtonWithIconAndTitle(image: "creditcard", title: "Send", action: {})
}
