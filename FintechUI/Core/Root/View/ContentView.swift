//
//  ContentView.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                // NavBar
                NavBar
                
                // My Cards
                
                
                // Actions
                
                // Chips
                
                // Contacts
                
                Spacer()
            }
            .padding()
        }
        .background(.black)
    }
}

extension ContentView {
    var NavBar: some View {
        HStack {
            UserPicture(user: .myUser, kind: .rectangular)
            
            Spacer()
            
            NavBarButton(image: "ellipsis", action: {})
        }
    }
}

// MARK: - Previews
#Preview {
    ContentView()
}
