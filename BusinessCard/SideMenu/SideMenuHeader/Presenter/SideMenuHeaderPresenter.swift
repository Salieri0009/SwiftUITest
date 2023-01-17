//
//  SideMenuHeaderSideMenuHeaderPresenter.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

class SideMenuHeaderPresenter {

    // MARK: Public Properties
    
    weak var viewModel: SideMenuHeaderViewInput!
    var interactor: SideMenuHeaderInteractorInput!
    var output: SideMenuHeaderModuleOutput?

}

// MARK: - SideMenuHeaderViewOutput

extension SideMenuHeaderPresenter: SideMenuHeaderViewOutput {

}

// MARK: - SideMenuHeaderModuleInput

extension SideMenuHeaderPresenter: SideMenuHeaderModuleInput {

}

// MARK: - SideMenuHeaderInteractorOutput

extension SideMenuHeaderPresenter: SideMenuHeaderInteractorOutput {

}
