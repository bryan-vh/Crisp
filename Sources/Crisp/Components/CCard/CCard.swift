//
//  SwiftUIView.swift
//  
//
//  Created by Bryan Van Horn on 1/19/24.
//

import SwiftUI

struct CCard<Header: View, Content: View, Footer: View>: View {
    
    @Environment(\.theme) var theme
    
    private let viewModel: CCardViewModel<Header, Content, Footer>
    
    init(
        _ style: CCardStyle,
        content: @escaping () -> Content,
        header: @escaping () -> Header = { EmptyView() },
        footer: @escaping () -> Footer = { EmptyView() }
    ) {
        self.viewModel = CCardViewModel(header: header, content: content, footer: footer, style: style)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            viewModel.header
            viewModel.content
            viewModel.footer
        }
        .frame(maxWidth: .infinity)
        .cCardStyle(viewModel.style, theme: theme)
    }
}

#Preview {
    CCard(.default) {
        CText("here is some long text about some random thing we are writing about for demo", size: .m)
    } header: {
        CHeading("Aloha", size: .h3)
    } footer: {
        Toggle("Hello", isOn: .constant(false))
    }
    .padding()
}
