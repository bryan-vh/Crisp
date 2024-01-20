//
//  File.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

struct CCardViewModel<Header: View, Content: View, Footer: View> {
    @ViewBuilder let header: Header
    @ViewBuilder let content: Content
    @ViewBuilder let footer: Footer
    let style: CCardStyle
}
