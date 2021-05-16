//
//  RemoteAuthenticationTests.swift
//  DataTests
//
//  Created by Débora Lage on 16/05/21.
//

import XCTest
import Domain
import Data

class RemoteAuthenticationTests: XCTestCase {
    func test_add_should_call_httpClient_with_correct_url_one_time_only() {
        let url = makeURL()
        let (sut, httpClientSpy) = makeSut(url: url)
        sut.auth()
        XCTAssertEqual(httpClientSpy.urls, [url])
    }
}

extension RemoteAuthenticationTests {
    func makeSut(url: URL = URL(string: "http://any-url.com")!, file: StaticString = #filePath, line: UInt = #line) -> (sut: RemoteAuthentication, httpClientSpy: HttpClientSpy) {
        let httpClientSpy = HttpClientSpy()
        let sut = RemoteAuthentication(url: url, httpClient: httpClientSpy)
        checkMemoryLeak(for: sut, file: file, line: line)
        checkMemoryLeak(for: httpClientSpy, file: file, line: line)
        return (sut, httpClientSpy)
    }
}
