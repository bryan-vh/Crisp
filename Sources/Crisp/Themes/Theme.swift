//
//  Theme.swift
//  

import Foundation
import SwiftUI

struct Theme {
    let font: Font
    let primaryForeground: Color
    let secondaryForeground: Color
    let primaryBackground: Color
    let secondaryBackground: Color
}

extension Theme {
    static let `default` = Theme(
        font: .headline,
        primaryForeground: .red,
        secondaryForeground: .orange, 
        primaryBackground: .black,
        secondaryBackground: .gray
    )
}
