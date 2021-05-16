//
//  Validation.swift
//  Presentation
//
//  Created by Débora Lage on 15/05/21.
//

import Foundation

public protocol Validation {
    func validate(data: [String: Any]?) -> String?
}
