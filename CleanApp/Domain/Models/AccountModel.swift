//
//  AccountModel.swift
//  Domain
//
//  Created by Débora Lage on 15/04/21.
//

import Foundation

public struct AccountModel: Model {
    public var accessToken: String

    public init(accessToken: String) {
        self.accessToken = accessToken
    }
}
