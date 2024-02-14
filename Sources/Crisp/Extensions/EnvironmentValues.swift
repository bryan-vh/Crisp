//
//  EnvironmentValues.swift
//

import Foundation
import SwiftUI

public extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

public extension View {
    func theme(_ value: Theme) -> some View {
        environment(\.theme, value)
    }
}

private struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .default
}
