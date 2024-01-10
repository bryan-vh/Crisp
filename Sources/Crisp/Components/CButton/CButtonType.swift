//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import Foundation
import SwiftUI

enum CButtonType {
    case `default`
    case stretched
    case icon
    case text
}

struct DefaultButtonType: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .clipShape(.rect(cornerRadius: 20))
    }
}

struct StretchedButtonType: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .clipShape(.rect(cornerRadius: 20))
    }
}

struct IconButtonType: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .labelStyle(.iconOnly)
            .padding()
            .clipShape(.capsule(style: .continuous))
    }
}

struct TextButtonType: ViewModifier {
    typealias Body = Button
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundStyle(.primary)
            .labelStyle(.titleOnly)
            .padding()
    }
}

extension View {
    
    @ViewBuilder
    func cButtonType(_ type: CButtonType) -> some View {
        switch type {
        case .default:
            modifier(DefaultButtonType())
        case .stretched:
            modifier(StretchedButtonType())
        case .icon:
            modifier(IconButtonType())
        case .text:
            modifier(TextButtonType())
        }
    }
}
