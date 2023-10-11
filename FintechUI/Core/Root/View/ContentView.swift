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
                Chips
                
                // Contacts
                MyContacts
                
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
                if let myCards = User.myUser.cards {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(myCards) { card in
                                CardView(card: card)
                            }
                        }
                    }
                }
            }
        }
    }
    
    var Actions: some View {
        HStack {
            ButtonWithIconAndTitle(image: Operation.send.image, title: Operation.send.rawValue.capitalized, action: {})
            
            ButtonWithIconAndTitle(image: Operation.receive.image, title: Operation.receive.rawValue.capitalized, action: {})
            
            ButtonWithIconAndTitle(image: "dollarsign.arrow.circlepath", title: "Swap", action: {})
        }
    }
    
    var Chips: some View {
        HStack {
            ChipView(title: "Activity", action: {})
            ChipView(title: "Contacts", action: {})
            ChipView(title: "Payments", action: {})
            ChipView(title: "Sale", action: {})
        }
    }
    
    var MyContacts: some View {
        VStack(spacing: 6) {
            HStack {
                Text("My contacts")
                    .font(.system(size: 24))
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .foregroundStyle(.white)
            .padding(.horizontal)
            
            Spacer()
            
            LazyVStack {
                ForEach(User.MOCK_USERS) { user in
                    ContactRow(contact: user)
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.cGray)
        )
    }
}

// MARK: - Previews
#Preview {
    ContentView()
}
