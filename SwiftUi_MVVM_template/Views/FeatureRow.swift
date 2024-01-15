//
//  FeatureRow.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import SwiftUI

struct FeatureRow: View {
    var feature: Feature
    init(feature: Feature) {
        print("cell \(feature.name)")
        self.feature = feature
    }
    
    var body: some View {
        HStack (alignment: .top) {
            VStack (alignment: .leading){
                Text(feature.name)
                    .font(.headline)
                Text(feature.description)
            }
            
            Spacer()
        }
    }
}

struct FeatureRow_Previews: PreviewProvider {
    static var previews: some View {
        FeatureRow(feature: featuresDummy[0])
    }
}
