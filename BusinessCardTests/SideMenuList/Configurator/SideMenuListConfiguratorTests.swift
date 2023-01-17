//
//  SideMenuListSideMenuListConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class SideMenuListModuleConfiguratorTests: XCTestCase {

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
	let output = SideMenuListMockModuleOutput()
        let view = SideMenuListModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "SideMenuListViewModel is nil after configuration")

        let presenter: SideMenuListPresenter = view.model.output as! SideMenuListPresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in SideMenuListPresenter is nil after configuration")

        let interactor: SideMenuListInteractor = presenter.interactor as! SideMenuListInteractor
        XCTAssertNotNil(interactor.output, "output in SideMenuListInteractor is nil after configuration")
    }

    class SideMenuListMockModuleOutput: SideMenuListModuleOutput {

    }
}
