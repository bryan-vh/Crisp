//
//  CInput.swift
//  
//
//  Created by Bryan Van Horn on 1/9/24.
//

import SwiftUI

struct CInput: View {
    
    @Environment(\.theme) var theme
    
    @Binding var input: String
    
    var body: some View {
        TextField("", text: $input)
    }
}

#Preview {
    CInput(input: .constant("what"))
}
