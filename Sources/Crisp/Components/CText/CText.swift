//
//  SwiftUIView.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

struct CText: View {
    
    @Environment(\.theme) var theme
    
    private let viewModel: CTextViewModel
    
    init(_ text: String, size: CTextSize) {
        self.viewModel = CTextViewModel(text: text, size: size)
    }
    
    var body: some View {
        Text(viewModel.text)
            .text(viewModel.size, theme: theme)
    }
}

#Preview {
    CText("Hello World!", size: .m)
}
