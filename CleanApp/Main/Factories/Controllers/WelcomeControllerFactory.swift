//
//  WelcomeControllerFactory.swift
//  Main
//
//  Created by Débora Lage on 18/05/21.
//

import Foundation
import UI

public func makeWelcomeController(nav: NavigationController) -> WelcomeViewController {
    let router = WelcomeRouter(nav: nav, loginFactory: makeLoginController, signUpFactory: makeSignUpController)
    let controller = WelcomeViewController.instantiate()
    controller.signUp = router.goToSignUp
    controller.login = router.goToLogin
    return controller
}
