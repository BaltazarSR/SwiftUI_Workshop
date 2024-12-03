//
//  AuthView.swift
//  SwiftWorkshop
//
//  Created by Baltazar Servin on 02/12/24.
//

import SwiftUI

struct AuthView: View {
    @State var email: String = ""
    @State var password: String = ""
    @FocusState private var focus: String?
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .padding(16)
                .background(Color(uiColor:
                        .secondarySystemBackground),
                            in: RoundedRectangle(cornerRadius: 16))
                .border(focus == "emailField" ? Color.black : .clear)
                .focused($focus, equals:"emailField")
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedTextFieldStyle())
        }
        
        .padding(16)
        
    }
}

#Preview {
    AuthView()
}
