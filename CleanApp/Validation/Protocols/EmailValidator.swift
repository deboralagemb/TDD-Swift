//
//  EmailValidator.swift
//  Presentation
//
//  Created by Débora Lage on 11/05/21.
//

import Foundation

public protocol EmailValidator {
    func isValid(email: String) -> Bool
}
