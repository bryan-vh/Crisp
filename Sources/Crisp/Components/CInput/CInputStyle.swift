//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import Foundation
import SwiftUI

enum CInputStyle {
    case `default`
    case outline
}

struct DefaultInputStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(theme.secondaryBackground)
            .clipShape(theme.shape)
    }
}

struct OutlineInputStyle: ViewModifier {
    
    let theme: Theme
    
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay {
                theme.shape
                    .stroke(theme.secondaryBackground, lineWidth: 2)
            }
    }
}

extension View {
    
    @ViewBuilder
    func cInputStyle(_ inputStyle: CInputStyle, theme: Theme) -> some View {
        switch inputStyle {
        case .default:
            modifier(DefaultInputStyle(theme: theme))
        case .outline:
            modifier(OutlineInputStyle(theme: theme))
        }
    }
}
