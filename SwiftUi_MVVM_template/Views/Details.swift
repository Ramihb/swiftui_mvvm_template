//
//  Details.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import SwiftUI

struct Details: View {
    let feature: Feature

    var body: some View {
        Text(feature.name)
    }
}

#Preview {
    Details(feature: Feature(name: "", description: ""))
}
