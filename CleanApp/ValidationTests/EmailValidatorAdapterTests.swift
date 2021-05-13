//
//  EmailValidatorAdapterTests.swift
//  ValidationTests
//
//  Created by Débora Lage on 13/05/21.
//

import XCTest
import Presentation
import Validation

class EmailValidatorAdapterTests: XCTestCase {
    func test_invalid_emails() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "rr"))
        XCTAssertFalse(sut.isValid(email: "rr@"))
        XCTAssertFalse(sut.isValid(email: "rr@rr"))
        XCTAssertFalse(sut.isValid(email: "rr@rr."))
        XCTAssertFalse(sut.isValid(email: "@rr.com"))
    }

    func test_valid_emails() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "debora@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "debora@hotmail.com"))
    }
}

extension EmailValidatorAdapterTests {
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
