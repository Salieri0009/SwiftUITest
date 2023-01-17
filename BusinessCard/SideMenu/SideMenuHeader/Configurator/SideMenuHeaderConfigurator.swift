//
//  SideMenuHeaderSideMenuHeaderConfigurator.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import SwiftUI

class SideMenuHeaderModuleConfigurator {
    
    func configure(output: SideMenuHeaderModuleOutput?) -> SideMenuHeaderView {
        
        let viewModel = SideMenuHeaderViewModel()
        
        let presenter = SideMenuHeaderPresenter()
        presenter.viewModel = viewModel
        presenter.output = output
        
        let interactor = SideMenuHeaderInteractor()
        interactor.output = presenter
        
        presenter.interactor = interactor
        viewModel.output = presenter
        
        let view = SideMenuHeaderView(model: viewModel)
        
        return view
    }
}
