//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

public struct Typography {
    let badge: Font
    let input: Font
    let button: Font
    let heading: Heading
    let text: Typography.Text
    
    struct Heading {
        let h1: Font
        let h2: Font
        let h3: Font
    }
    
    struct Text {
        let l: Font
        let m: Font
        let s: Font
        let xs: Font
    }
}
