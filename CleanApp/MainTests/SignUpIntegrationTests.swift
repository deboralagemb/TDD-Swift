//
//  SignUpIntegrationTests.swift
//  MainTests
//
//  Created by Débora Lage on 13/05/21.
//

import XCTest
import Main

class SignUpIntegrationTests: XCTestCase {
    func test_ui_presentation_integration() {
        debugPrint("=================")
        debugPrint(Environment.variable(.apiBaseUrl))
        debugPrint("=================")
        let sut = SignUpComposer.composeControllerWith(addAccount: AddAccountSpy())
        checkMemoryLeak(for: sut)
    }
}
