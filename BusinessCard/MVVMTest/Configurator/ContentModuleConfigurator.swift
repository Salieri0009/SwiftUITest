//
//  ContentModuleConfigurator.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import Foundation

class ContentModuleConfigurator {
    func configure(output: ContentModuleOutput?) -> ContentView {
        let viewModel = SceneModel()
        
        let presenter = ContentPresenter()
        presenter.viewModel = viewModel
        presenter.output = output
        
        let interactor = ContentInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewModel.output = presenter
        
        let view = ContentView(model: viewModel)
        
        return view
    }
}
