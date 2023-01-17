//
//  SideMenuHeaderSideMenuHeaderConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class SideMenuHeaderModuleConfiguratorTests: XCTestCase {

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
	let output = SideMenuHeaderMockModuleOutput()
        let view = SideMenuHeaderModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "SideMenuHeaderViewModel is nil after configuration")

        let presenter: SideMenuHeaderPresenter = view.model.output as! SideMenuHeaderPresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in SideMenuHeaderPresenter is nil after configuration")

        let interactor: SideMenuHeaderInteractor = presenter.interactor as! SideMenuHeaderInteractor
        XCTAssertNotNil(interactor.output, "output in SideMenuHeaderInteractor is nil after configuration")
    }

    class SideMenuHeaderMockModuleOutput: SideMenuHeaderModuleOutput {

    }
}
