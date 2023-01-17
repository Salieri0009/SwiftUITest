//
//  AboutMeAboutMeConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class AboutMeModuleConfiguratorTests: XCTestCase {

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
	let output = AboutMeMockModuleOutput()
        let view = AboutMeModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "AboutMeViewModel is nil after configuration")

        let presenter: AboutMePresenter = view.model.output as! AboutMePresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in AboutMePresenter is nil after configuration")

        let interactor: AboutMeInteractor = presenter.interactor as! AboutMeInteractor
        XCTAssertNotNil(interactor.output, "output in AboutMeInteractor is nil after configuration")
    }

    class AboutMeMockModuleOutput: AboutMeModuleOutput {

    }
}
