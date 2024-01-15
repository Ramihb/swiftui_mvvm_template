//
//  ServiceProtocol.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import Foundation

protocol ServiceProtocol {
    func getFeatures() -> [Feature]
    func addExtraFeature(counter: Int) -> Feature
    func deleteFeature(id: UUID)
}


class ServiceProtocolExample: ServiceProtocol {
    //from data base
    func getFeatures() -> [Feature] {
        return Array(featuresDummy[0...number])
    }
    func addExtraFeature(counter: Int) -> Feature {
        return Feature(name: "Feature \(counter)", description: "Description \(counter)")
    }
    func deleteFeature(id: UUID) {
        if let index = featuresDummy.firstIndex(where: { $0.id == id }) {
            featuresDummy.remove(at: index)
        }
    }

}
