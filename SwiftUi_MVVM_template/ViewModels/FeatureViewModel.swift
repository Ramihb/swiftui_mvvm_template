//
//  FeatureViewModel.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import Foundation

class FeatureViewModel: ObservableObject {
    var service: ServiceProtocol

    @Published var features = [Feature]()
    
    internal init(service: ServiceProtocol) {
        self.service = service
    }

    func load(){
        features = service.getFeatures()
    }
    
    func add() {
            let counterExtra = features.count
            let newFeature = service.addExtraFeature(counter: counterExtra)
            features.append(newFeature)
        }
    
    func delete(feature: Feature) {
        service.deleteFeature(id: feature.id)
        number -= 1
        load()
    }

}
