//
//  SignUpComposer.swift
//  Main
//
//  Created by Débora Lage on 13/05/21.
//

import Foundation
import Domain
import UI

public final class SignUpComposer {
    static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        return ControllerFactory.makeSignUp(addAccount: addAccount)
    }
}
