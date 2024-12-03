//
//  AuthView.swift
//  SwiftWorkshop
//
//  Created by Baltazar Servin on 02/12/24.
//

import SwiftUI

struct AuthView: View {
    @State var authViewModel = AuthViewModel()
    @FocusState private var focus: String?
    
    var body: some View {
        VStack {
            TextField("Email", text: $authViewModel.email)
                .textFieldStyle(RoundedTextFieldStyle())
//                .padding(16)
//                .background(Color(uiColor:
//                        .secondarySystemBackground),
//                            in: RoundedRectangle(cornerRadius: 16))
//                .border(focus == "emailField" ? Color.black : .clear)
//                .focused($focus, equals:"emailField")
//                .textContentType(.emailAddress)
//                .keyboardType(.emailAddress)
                
            
            SecureField("Password", text: $authViewModel.password)
                .textFieldStyle(RoundedTextFieldStyle())
            ViewThatFits {
                HStack{
                    registerButton()
                    loginButton()
                }
                .disabled(self.authViewModel.email.isEmpty || self.authViewModel.password.isEmpty)
                
                VStack{
                    registerButton()
                    loginButton()
                }
                .disabled(self.authViewModel.email.isEmpty || self.authViewModel.password.isEmpty)
            }
            
        }
        
        .padding(16)
        
    }
    
    @ViewBuilder private func registerButton() -> some View {
        Button {
            Task {
                await self.authViewModel.registerUser()
            }
        } label: {
            Text("Register")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
    }
    
    @ViewBuilder private func loginButton() -> some View {
        Button {
            Task {
                await self.authViewModel.loginWithEmailPassword()
            }
        } label: {
            Text("Login")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    AuthView()
}
