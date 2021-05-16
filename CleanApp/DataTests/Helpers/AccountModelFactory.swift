//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Débora Lage on 26/04/21.
//

import Foundation
import Domain

func makeAddAccountModel() -> AddAccountModel {
    return AddAccountModel(name: "any_name", email: "any_email@email.com", password: "any_password", passwordConfirmation: "any_password")
}

func makeAccountModel() -> AccountModel {
    return AccountModel(accessToken: "any_token")
}

func makeAuthenticationModel() -> AuthenticationModel {
    return AuthenticationModel(email: "any_email@email.com", password: "any_password")
}
