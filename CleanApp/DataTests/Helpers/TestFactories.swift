//
//  TestFactories.swift
//  DataTests
//
//  Created by Débora Lage on 26/04/21.
//

import Foundation

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}

func makeURL() -> URL {
    return URL(string: "http://any-url.com")!
}
