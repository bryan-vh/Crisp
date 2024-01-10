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
    
    func body(content: Content) -> some View {
        content
    }
}

struct OutlineInputStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
    }
}
