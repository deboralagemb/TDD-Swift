//
//  Model.swift
//  Domain
//
//  Created by Débora Lage on 16/04/21.
//

import Foundation

public protocol Model: Codable, Equatable {}

public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
