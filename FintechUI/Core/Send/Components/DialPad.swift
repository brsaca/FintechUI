//
//  DialPad.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import SwiftUI

enum Pads: String, CaseIterable {
    case n1 = "1"
    case n2 = "2"
    case n3 = "3"
    case n4 = "4"
    case n5 = "5"
    case n6 = "6"
    case n7 = "7"
    case n8 = "8"
    case n9 = "9"
    case minus = "<"
    case n0 = "0"
    case dot = "."
}

struct DialPad: View {
    // MARK: View Properties
    let pad: Pads
    @Binding var currentAmount: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(pad.rawValue)
                .font(.largeTitle)
                .foregroundStyle(.white)
            Spacer()
        }
        .frame(width: (UIScreen.main.bounds.width - 70) / 3, height: 70)
        .background(Color.cGray.opacity(0.9))
        .cornerRadius(20)
        .onTapGesture {
            if currentAmount.isEmpty {
                if pad != .minus && pad != .dot && pad != .n0 {
                    currentAmount.append(pad.rawValue)
                }
            } else {
                if pad == .minus {
                    currentAmount.removeLast()
                } else if pad != .dot {
                    currentAmount.append(pad.rawValue)
                } else if !currentAmount.contains(".") {
                    currentAmount.append(".")
                }
            }
        }
    }
}

// MARK: - Previews
#Preview("0"){
    DialPad(pad: .n0, currentAmount: .constant(""))
}

#Preview("1"){
    DialPad(pad: .n1, currentAmount: .constant("100"))
}

#Preview("minus empty"){
    DialPad(pad: .minus, currentAmount: .constant(""))
}

#Preview("minus 100"){
    DialPad(pad: .minus, currentAmount: .constant("100"))
}
