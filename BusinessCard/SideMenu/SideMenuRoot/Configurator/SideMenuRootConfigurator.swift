//
//  SideMenuRootSideMenuRootConfigurator.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

class SideMenuRootModuleConfigurator {
    
    func configure(isMenuShowing: Binding<Bool>, output: SideMenuRootModuleOutput?) -> SideMenuRootView {
        
        let viewModel = SideMenuRootViewModel()
        
        let presenter = SideMenuRootPresenter()
        presenter.viewModel = viewModel
        presenter.output = output
        
        let interactor = SideMenuRootInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewModel.output = presenter
        
        let view = SideMenuRootView(model: viewModel, isMenuShowing: isMenuShowing)
        
        return view
    }
}
