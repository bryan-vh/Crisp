//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

enum CHeadingSize {
    case h1
    case h2
    case h3
}

extension Text {
    
    @ViewBuilder
    func heading(_ size: CHeadingSize, theme: Theme) -> some View {
        switch size {
        case .h1:
            font(theme.typography.heading.h1)
        case .h2:
            font(theme.typography.heading.h2)
        case .h3:
            font(theme.typography.heading.h3)
        }
    }
}
