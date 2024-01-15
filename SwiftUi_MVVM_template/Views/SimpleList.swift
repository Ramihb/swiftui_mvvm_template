//
//  SimpleList.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import SwiftUI

struct SimpleList: View {
    
    @State private var changeColor = true
    @ObservedObject private var featureViewModel: FeatureViewModel
    
    internal init(featureViewModel: FeatureViewModel) {
        self.featureViewModel = featureViewModel
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List (featureViewModel.features.reversed()){ feature in
                    NavigationLink(destination: Details(feature: feature)) {
                        FeatureRow(feature: feature)
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            featureViewModel.delete(feature: feature)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
                Text("Statefull text")
                    .font(changeColor ? .callout : .title)
                CustomActionButton(changeColor: $changeColor, action: {
                    featureViewModel.add()
                })

            }
                    .navigationTitle("Feature")
        }
        .onAppear {
            featureViewModel.load()
        }
    }
}

struct SmpleList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SimpleList(featureViewModel: FeatureViewModel(service: ServiceProtocolExample()))
        }
    }
}
