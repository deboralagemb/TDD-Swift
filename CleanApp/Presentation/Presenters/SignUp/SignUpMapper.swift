//
//  SignUpMapper.swift
//  Presentation
//
//  Created by Débora Lage on 11/05/21.
//

import Foundation
import Domain

public final class SignUpMapper {
    static func toAddAccountModel(viewModel: SignUpViewModel) -> AddAccountModel {
        return AddAccountModel(name: viewModel.name!, email: viewModel.email!, password: viewModel.password!, passwordConfirmation: viewModel.passwordConfirmation!)
    }
}
