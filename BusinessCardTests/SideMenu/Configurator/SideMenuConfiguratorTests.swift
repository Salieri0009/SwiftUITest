//
//  SideMenuSideMenuConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class SideMenuModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
	let output = SideMenuMockModuleOutput()
        let view = SideMenuModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "SideMenuViewModel is nil after configuration")

        let presenter: SideMenuPresenter = view.model.output as! SideMenuPresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in SideMenuPresenter is nil after configuration")

        let interactor: SideMenuInteractor = presenter.interactor as! SideMenuInteractor
        XCTAssertNotNil(interactor.output, "output in SideMenuInteractor is nil after configuration")
    }

    class SideMenuMockModuleOutput: SideMenuModuleOutput {

    }
}
