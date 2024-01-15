//
//  CustomActionButton.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import SwiftUI

struct CustomActionButton: View {
    @Binding var changeColor: Bool
    var action: (()->Void)?
    var body: some View {
        Button("Add feature") {
            withAnimation {
//                changeColor.toggle()
                action?()
            }
        }
    }
}

struct Subview1_Previews: PreviewProvider {
    static var previews: some View {
        CustomActionButton(changeColor: .constant(false))
    }
}
