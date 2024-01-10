//
//  EnvironmentValues.swift
//

import Foundation
import SwiftUI

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

extension View {
    func theme(_ value: Theme) -> some View {
        environment(\.theme, value)
    }
}

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .default
}
