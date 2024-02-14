//
//  SwiftUIView.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

public struct CHeading: View {
    
    @Environment(\.theme) var theme
    
    private let viewModel: CHeadingViewModel
    
    init(_ text: String, size: CHeadingSize) {
        self.viewModel = CHeadingViewModel(text: text, size: size)
    }
    
    public var body: some View {
        Text(viewModel.text)
            .heading(viewModel.size, theme: theme)
    }
}

@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    CHeading("Hello World!", size: .h1)
}
