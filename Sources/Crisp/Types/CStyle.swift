//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

public enum CStyle {
    case primary
    case secondary
    case outline
    case plain
}

extension CStyle {
    
    var foreground: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return .primary
        case .outline:
            return .primary
        case .plain:
            return .primary
        }
    }
    
    var background: Color {
        switch self {
        case .primary:
            return .primary
        case .secondary:
            return .secondary
        case .outline:
            return .clear
        case .plain:
            return .clear
        }
    }
}
