//
//  SideMenuRootSideMenuRootPresenter.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

class SideMenuRootPresenter {

    // MARK: Public Properties
    
    weak var viewModel: SideMenuRootViewInput!
    var interactor: SideMenuRootInteractorInput!
    var output: SideMenuRootModuleOutput?
}

// MARK: - SideMenuRootViewOutput

extension SideMenuRootPresenter: SideMenuRootViewOutput {

}

// MARK: - SideMenuRootModuleInput

extension SideMenuRootPresenter: SideMenuRootModuleInput {

}

// MARK: - SideMenuRootInteractorOutput

extension SideMenuRootPresenter: SideMenuRootInteractorOutput {

}
