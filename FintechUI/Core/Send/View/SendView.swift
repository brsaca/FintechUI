//
//  SendView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

struct SendView: View {
    // MARK: View Properties
    let contact: User
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 26) {
            // NavBar
            NavBar
            
            // Contact
            
            
            // Amount
            
            
            // Pad
            
            Spacer()
            // Button
            
            
        }
        .padding()
        .background(.black)
    }
}

extension SendView {
    var NavBar: some View {
        HStack {
            ButtonWithIcon(type: .square, image: "arrow.backward", action: {
                dismiss()
            })
            
            Spacer()
            
            Text("Send")
                .font(.title2)
                .fontWeight(.light)
                .foregroundStyle(.white)
            
            Spacer()
            
            ButtonWithIcon(type: .square, image: "ellipsis", action: {})
        }
    }
    
    var ContactInfo: some View {
        VStack {
            ZStack {
                UserPicture(user: contact, kind: .circular)
                
            }
        }
    }
}

// MARK: - Previews
#Preview {
    SendView(contact: User.MOCK_USERS[5])
}
