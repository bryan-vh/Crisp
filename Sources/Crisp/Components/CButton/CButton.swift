//
//  CButton.swift
//  

import SwiftUI

struct CButton: View {
    
    @Environment(\.theme) var theme
    
    @State private var isLoading = false
    private let viewModel: CButtonViewModel
    
    init(
        _ title: String,
        icon: String = "",
        type: CButtonType = .default,
        style: CButtonStyle = .default,
        action: CButtonAction
    ) {
        self.viewModel = CButtonViewModel(
            title: title,
            icon: icon,
            type: type,
            style: style,
            action: action
        )
    }
    
    var body: some View {
        Button {
            switch viewModel.action {
            case .default(let action): action()
            case .async(let action): performAsyncAction(action)
            }
        } label: {
            if isLoading {
                ProgressView()
            } else {
                Label(viewModel.title, systemImage: viewModel.icon)
            }
        }
        .cButtonType(viewModel.type)
        .cButtonStyle(viewModel.style)
        .disabled(isLoading)
        .animation(.bouncy, value: isLoading)
        .font(theme.font)
    }
    
    @MainActor
    private func performAsyncAction(_ action: @escaping () async -> Void) {
        Task {
            isLoading = true
            await action()
            isLoading = false
        }
    }
}

@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    CButton("Hello", icon: "house", type: .default, action: .async({
        try? await Task.sleep(for: .seconds(5))
    }))
    .padding()
}