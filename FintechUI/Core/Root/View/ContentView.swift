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
                MyCards
                
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
            
            ButtonWithIcon(type: .square, image: "ellipsis", action: {})
        }
    }
    
    var MyCards: some View {
        VStack(alignment: .leading) {
            Text("My cards")
                .font(.system(size: 50))
                .fontWeight(.regular)
                .foregroundStyle(.white)
            
            ScrollView(.horizontal) {
                ButtonWithIcon(type: .large, image: "plus", action: {})

            }
        }
    }
}

// MARK: - Previews
#Preview {
    ContentView()
}
