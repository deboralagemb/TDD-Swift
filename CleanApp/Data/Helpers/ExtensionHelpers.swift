//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Débora Lage on 26/04/21.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}
