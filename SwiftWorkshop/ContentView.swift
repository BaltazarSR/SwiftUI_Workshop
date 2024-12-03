//
//  ContentView.swift
//  SwiftWorkshop
//
//  Created by Baltazar Servin on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "cross")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bernando")
            Text("Estudio en el Tec")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
