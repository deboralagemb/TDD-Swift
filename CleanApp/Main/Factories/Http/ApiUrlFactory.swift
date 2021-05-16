//
//  ApiUrlFactory.swift
//  Main
//
//  Created by Débora Lage on 16/05/21.
//

import Foundation

func makeApiUrl(path: String) -> URL {
    return URL(string: "\(Environment.variable(.apiBaseUrl))/\(path)")!
}
