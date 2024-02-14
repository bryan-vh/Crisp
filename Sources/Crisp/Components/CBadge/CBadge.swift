//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

public struct CBadge: View {
    
    @Environment(\.theme) var theme
    
    private let viewModel: CBadgeViewModel
    
    init(_ title: String, icon: String? = nil, style: CStyle = .primary) {
        self.viewModel = CBadgeViewModel(title: title, icon: icon, style: style)
    }
    
    public var body: some View {
        if let icon = viewModel.icon {
            Label(viewModel.title, systemImage: icon)
                .font(theme.typography.badge)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .cStyle(viewModel.style, theme: theme)
                .labelStyle(.titleAndIcon)
        } else {
            Label(viewModel.title, systemImage: "")
                .font(theme.typography.badge)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .cStyle(viewModel.style, theme: theme)
                .labelStyle(.titleOnly)
        }
        
    }
}

@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    CBadge("Hello", style: .outline)
        .environment(\.theme, .default)
}
