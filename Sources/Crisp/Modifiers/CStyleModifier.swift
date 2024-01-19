//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

struct PrimaryStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(theme.primaryBackground)
            .background(theme.primaryForeground)
            .clipShape(theme.shape)
    }
}

struct SecondaryStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(theme.primaryForeground)
            .background(theme.secondaryBackground)
            .clipShape(theme.shape)
    }
}

struct OutlineStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(theme.primaryForeground)
            .background(.clear)
            .overlay {
                theme.shape
                    .stroke(theme.secondaryBackground, lineWidth: 2)
            }
    }
}

struct PlainStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(theme.primaryForeground)
            .background(.clear)
    }
}

extension View {
    
    @ViewBuilder
    func cStyle(_ style: CStyle, theme: Theme) -> some View {
        switch style {
        case .primary:
            modifier(Crisp.PrimaryStyle(theme: theme))
        case .secondary:
            modifier(Crisp.SecondaryStyle(theme: theme))
        case .outline:
            modifier(Crisp.OutlineStyle(theme: theme))
        case .plain:
            modifier(Crisp.PlainStyle(theme: theme))
        }
    }
}
