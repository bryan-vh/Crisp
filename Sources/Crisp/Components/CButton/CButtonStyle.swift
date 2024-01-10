//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import Foundation
import SwiftUI

enum CButtonStyle {
    case `default`
    case muted
    case outline
    case plain
}

struct DefaultButtonStyle: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct MutedButtonStyle: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.primary)
            .background(.gray)
            .clipShape(.capsule)
    }
}

struct OutlineButtonStyle: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.primary)
            .background()
            .clipShape(.capsule)
    }
}

struct PlainButtonStyle: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.primary)
            .background()
            .clipShape(.capsule)
    }
}

extension View {
    
    @ViewBuilder
    func cButtonStyle(_ style: CButtonStyle) -> some View {
        switch style {
        case .default:
            modifier(Crisp.DefaultButtonStyle())
        case .muted:
            modifier(MutedButtonStyle())
        case .outline:
            modifier(OutlineButtonStyle())
        case .plain:
            modifier(Crisp.PlainButtonStyle())
        }
    }
}
