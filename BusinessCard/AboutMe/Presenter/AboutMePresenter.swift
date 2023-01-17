//
//  AboutMeAboutMePresenter.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

class AboutMePresenter {

    // MARK: Public Properties
    
    weak var viewModel: AboutMeViewInput!
    var interactor: AboutMeInteractorInput!
    var output: AboutMeModuleOutput?

}

// MARK: - AboutMeViewOutput

extension AboutMePresenter: AboutMeViewOutput {

}

// MARK: - AboutMeModuleInput

extension AboutMePresenter: AboutMeModuleInput {

}

// MARK: - AboutMeInteractorOutput

extension AboutMePresenter: AboutMeInteractorOutput {

}
