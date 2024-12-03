//
//  AppNavigation.swift
//  SwiftWorkshop
//
//  Created by Baltazar Servin on 02/12/24.
//

import SwiftUI

struct AppNavigation: View {
    var body: some View {
        NavigationStack {
            AuthView()
                .navigationBarTitle("Sign In")
        }
    }
}

#Preview {
    AppNavigation()
}
