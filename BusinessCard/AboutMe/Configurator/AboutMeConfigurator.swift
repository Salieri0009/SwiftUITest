//
//  AboutMeAboutMeConfigurator.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import Foundation

class AboutMeModuleConfigurator {

   func configure(output: AboutMeModuleOutput?) -> AboutMeView {

	let viewModel = AboutMeViewModel()

        let presenter = AboutMePresenter()
        presenter.viewModel = viewModel
        presenter.output = output

        let interactor = AboutMeInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
	viewModel.output = presenter
       	
	let view = AboutMeView(model: viewModel)
        
        return view
    }
}