//
//  ContentView.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SimpleList(featureViewModel: FeatureViewModel(service: ServiceProtocolExample()))
    }
}

#Preview {
    ContentView()
}
