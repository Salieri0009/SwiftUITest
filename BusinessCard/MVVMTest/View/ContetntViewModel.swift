//
//  ContetntViewModel.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import Foundation
import SwiftUI

class SceneModel: ObservableObject {
    var output: ContentViewOutput!
    
    @Published var textText = "Test"
}

extension SceneModel: ContentViewInput {
    func setLabel(text: String) {
        self.textText = text
    }
}
