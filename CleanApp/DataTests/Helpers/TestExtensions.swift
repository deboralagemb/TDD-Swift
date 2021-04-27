//
//  TestExtensions.swift
//  DataTests
//
//  Created by Débora Lage on 26/04/21.
//

import Foundation
import XCTest

extension XCTestCase {
    func checkMemoryLeak(for instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            // roda ao final dos testes
            XCTAssertNil(instance, file: file, line: line)
        }
    }
}
