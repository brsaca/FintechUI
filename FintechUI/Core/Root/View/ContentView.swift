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
            VStack(spacing: 26) {
                // NavBar
                NavBar
                
                // My Cards
                MyCards
                
                // Actions
                Actions
                
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
        VStack(alignment: .leading, spacing: 26) {
            Text("My cards")
                .font(.system(size: 50))
                .fontWeight(.regular)
                .foregroundStyle(.white)
            
            HStack {
                ButtonWithIcon(type: .large, image: "plus", action: {})
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(Card.MOCK_CARDS) { card in
                            CardView(card: card)
                        }
                    }
                }
            }
        }
    }
    
    var Actions: some View {
        HStack {
            ButtonWithIconAndTitle(image: "creditcard", title: "Send", action: {})
            
            ButtonWithIconAndTitle(image: "creditcard", title: "Receive", action: {})
            
            ButtonWithIconAndTitle(image: "dollarsign.arrow.circlepath", title: "Swap", action: {})
        }
    }
    
}

// MARK: - Previews
#Preview {
    ContentView()
}
