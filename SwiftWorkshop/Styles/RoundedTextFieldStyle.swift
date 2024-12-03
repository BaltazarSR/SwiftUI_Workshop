//
//  RoundedTextFieldStyle.swift
//  SwiftWorkshop
//
//  Created by Baltazar Servin on 02/12/24.
//

//import SwiftUI
//
//struct RoundedTextFieldStyle: TextFieldStyle {
//    func _body(configuration: TextField<Self._label> -> some View) {
//        return configuration
//            .padding()
//            .background(
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundStyle(Color(uiColor:
//                            .secondarySystemBackground))
//            )
//        
//    }
//}

import SwiftUI

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(uiColor:
                            .secondarySystemBackground))
            )
    }
}

