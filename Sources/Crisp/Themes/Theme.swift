//
//  Theme.swift
//  

import SwiftUI

struct Theme {
    let shape: AnyShape
    let primaryForeground: Color
    let secondaryForeground: Color
    let primaryBackground: Color
    let secondaryBackground: Color
    let typography: Typography
}

extension Theme {
    static let `default` = Theme(
        shape: AnyShape(.rect(cornerRadius: 16)),
        primaryForeground: .primary,
        secondaryForeground: .secondary,
        primaryBackground: Color(uiColor: .systemBackground),
        secondaryBackground: Color(uiColor: .secondarySystemBackground),
        typography: Typography(
            badge: .headline,
            input: .headline,
            button: .headline,
            heading: Typography.Heading(
                h1: .title,
                h2: .title2,
                h3: .title3
            ),
            text: Typography.Text(
                l: .headline,
                m: .body,
                s: .footnote,
                xs: .caption
            )
        )
    )
}
