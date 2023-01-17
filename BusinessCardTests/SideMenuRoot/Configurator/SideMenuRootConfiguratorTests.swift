//
//  SideMenuRootSideMenuRootConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class SideMenuRootModuleConfiguratorTests: XCTestCase {

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
	let output = SideMenuRootMockModuleOutput()
        let view = SideMenuRootModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "SideMenuRootViewModel is nil after configuration")

        let presenter: SideMenuRootPresenter = view.model.output as! SideMenuRootPresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in SideMenuRootPresenter is nil after configuration")

        let interactor: SideMenuRootInteractor = presenter.interactor as! SideMenuRootInteractor
        XCTAssertNotNil(interactor.output, "output in SideMenuRootInteractor is nil after configuration")
    }

    class SideMenuRootMockModuleOutput: SideMenuRootModuleOutput {

    }
}
