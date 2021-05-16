//
//  TestFactories.swift
//  PresentationTests
//
//  Created by Débora Lage on 11/05/21.
//

import Foundation
import Presentation

func makeSignUpViewModel(name: String? = "any_name", email: String? = "any_email@email.com", password: String? = "any_password", passwordConfirmation: String? = "any_password") -> SignUpViewModel {
    return SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation)
}

func makeLoginViewModel(email: String? = "any_email@email.com", password: String? = "any_password") -> LoginViewModel {
    return LoginViewModel(email: email, password: password)
}
