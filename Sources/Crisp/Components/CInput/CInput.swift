//
//  CInput.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import SwiftUI

public struct CInput: View {
    
    @Environment(\.theme) var theme
    @Binding var input: String
    
    private let viewModel: CInputViewModel
    
    public init(
        input: Binding<String>,
        content: UITextContentType? = nil,
        type: CInputType,
        style: CInputStyle = .default
    ) {
        self._input = input
        self.viewModel = CInputViewModel(content: content, style: style, type: type)
    }
    
    public var body: some View {
        switch viewModel.type {
        case .default:
            TextField("", text: $input)
                .textContentType(viewModel.content)
                .cInputStyle(viewModel.style, theme: theme)
        case .secure:
            SecureInputView(input: $input)
                .textContentType(viewModel.content)
                .cInputStyle(viewModel.style, theme: theme)
        case .pin(let count):
            PinInputView(input: $input, count: count)
                .textContentType(viewModel.content)
        }
    }
}

private struct SecureInputView: View {
    
    @Binding var input: String
    @State private var showText: Bool = false
    
    var body: some View {
        HStack {
            ZStack {
                if showText {
                    TextField("", text: $input)
                } else {
                    SecureField("", text: $input)
                }
            }
            Button {
                showText.toggle()
            } label: {
                Image(systemName: showText ? "eye.slash.fill" : "eye.fill")
            }
        }
    }
}

private struct PinInputView: View {
    @Binding var input: String
    @State private var inputs: [String]
    @FocusState private var field: Int?
    
    let count: Int
    
    init(input: Binding<String>, count: Int) {
        self._input = input
        self.count = count
        self._inputs = State(initialValue: Array(repeating: "", count: count))
    }
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(0 ..< count, id: \.self) { index in
                TextField("", text: $inputs[index])
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .focused($field, equals: index)
                    .onChange(of: inputs[index]) { value in
                        if value.count >= 1 { 
                            field = index + 1
                        } else {
                            field = index - 1
                        }
                        
                        if (index == inputs.count - 1) {
                            field = nil
                        }
                        
                        inputs[index] = String(value.prefix(1))
                    }
                    .clipShape(.capsule)
            }
        }
    }
}

@available(iOS 17, *)
#Preview(traits: .sizeThatFitsLayout) {
    CInput(input: .constant("what"), type: .default)
        .padding()
}
