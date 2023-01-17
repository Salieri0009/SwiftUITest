//
//  SideMenuListSideMenuListPresenter.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

class SideMenuListPresenter {

    // MARK: Public Properties
    
    weak var viewModel: SideMenuListViewInput!
    var interactor: SideMenuListInteractorInput!
    var output: SideMenuListModuleOutput?

}

// MARK: - SideMenuListViewOutput

extension SideMenuListPresenter: SideMenuListViewOutput {

}

// MARK: - SideMenuListModuleInput

extension SideMenuListPresenter: SideMenuListModuleInput {

}

// MARK: - SideMenuListInteractorOutput

extension SideMenuListPresenter: SideMenuListInteractorOutput {

}
