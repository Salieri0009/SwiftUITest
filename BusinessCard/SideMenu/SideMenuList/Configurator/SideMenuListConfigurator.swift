//
//  SideMenuListSideMenuListConfigurator.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import Foundation

class SideMenuListModuleConfigurator {
    
    func configure(item: SideMenuListItem, output: SideMenuListModuleOutput?) -> SideMenuListView {
        
        let viewModel = SideMenuListViewModel(item: item)
        
        let presenter = SideMenuListPresenter()
        presenter.viewModel = viewModel
        presenter.output = output
        
        let interactor = SideMenuListInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewModel.output = presenter
        
        let view = SideMenuListView(model: viewModel)
        
        return view
    }
}
