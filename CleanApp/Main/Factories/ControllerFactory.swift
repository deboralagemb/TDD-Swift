//
//  ControllerFactory.swift
//  Main
//
//  Created by Débora Lage on 13/05/21.
//

import Foundation
import UI
import Presentation
import Validation
import Domain

class ControllerFactory {
    static func makeSignUp(addAccount: AddAccount) -> SignUpViewController {
        let controller = SignUpViewController.instantiate()
        let emailValidatorAdapter = EmailValidatorAdapter()
        let presenter = SignUpPresenter(alertView: controller, emailValidator: emailValidatorAdapter, addAccount: addAccount, loadingView: controller)
        controller.signUp = presenter.signup
        return controller
    }
}
