//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

enum CCardStyle {
    case `default`
    case outline
}

struct DefaultCardStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(theme.secondaryBackground)
            .clipShape(theme.shape)
    }
}

struct OutlineCardStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.clear)
            .overlay {
                theme.shape
                    .stroke(theme.secondaryBackground, lineWidth: 2)
            }
    }
}

extension View {
    
    @ViewBuilder
    func cCardStyle(_ style: CCardStyle, theme: Theme) -> some View {
        switch style {
        case .default:
            modifier(DefaultCardStyle(theme: theme))
        case .outline:
            modifier(OutlineCardStyle(theme: theme))
        }
    }
}
