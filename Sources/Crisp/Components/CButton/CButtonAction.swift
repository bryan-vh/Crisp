//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import Foundation

enum CButtonAction {
    case `default`(() -> Void)
    case `async`(() async -> Void)
}
