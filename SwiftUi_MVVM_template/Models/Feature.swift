//
//  Feature.swift
//  SwiftUi_MVVM_template
//
//  Created by rami hbaieb on 15/1/2024.
//

import Foundation

var featuresDummy = Array(0...number).map { counter in
    return Feature(name: "Feature \(counter)", description: "Description \(counter)")
}

struct Feature : Identifiable {
    let id = UUID()
    
    let name: String
    let description: String
    
    internal init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
}
