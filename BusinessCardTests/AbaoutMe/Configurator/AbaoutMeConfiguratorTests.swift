//
//  AbaoutMeAbaoutMeConfiguratorTests.swift
//  BusinessCard
//
//  Created by Nikulin Maxim on 06/01/2023.
//  Copyright © 2023 Nikulin Maxim. All rights reserved.
//

import XCTest

class AbaoutMeModuleConfiguratorTests: XCTestCase {

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
	let output = AbaoutMeMockModuleOutput()
        let view = AbaoutMeModuleConfigurator().configure(output: output)

        //then
        XCTAssertNotNil(view.model, "AbaoutMeViewModel is nil after configuration")

        let presenter: AbaoutMePresenter = view.model.output as! AbaoutMePresenter
        XCTAssertNotNil(presenter.viewModel, "viewModel in AbaoutMePresenter is nil after configuration")

        let interactor: AbaoutMeInteractor = presenter.interactor as! AbaoutMeInteractor
        XCTAssertNotNil(interactor.output, "output in AbaoutMeInteractor is nil after configuration")
    }

    class AbaoutMeMockModuleOutput: AbaoutMeModuleOutput {

    }
}
