//
//  ScenePresenter.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import Foundation

class ContentPresenter {
    weak var viewModel: ContentViewInput!
    var interactor: ContentInteractorInput!
    var output: ContentModuleOutput?
    
    private var textForLabel = "changed Text"
    
}

extension ContentPresenter: ContentViewOutput {
    func getTestText() -> String {
        return textForLabel
    }
    
    func changeTestText() {
        viewModel.setLabel(text: textForLabel)
    }
}

extension ContentPresenter: ContentModuleInput {
    
}

extension ContentPresenter: ContentInteractorOutput {
    
}
