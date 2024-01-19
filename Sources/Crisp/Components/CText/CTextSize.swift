//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

enum CTextSize {
    case l
    case m
    case s
    case xs
}

extension View {
    
    func text(_ size: CTextSize, theme: Theme) -> some View {
        switch size {
        case .l:
            font(theme.typography.text.l)
        case .m:
            font(theme.typography.text.m)
        case .s:
            font(theme.typography.text.s)
        case .xs:
            font(theme.typography.text.xs)
        }
    }
}
