//
//  SignUpPresenterTests.swift
//  PresentationTests
//
//  Created by Débora Lage on 09/05/21.
//

import XCTest
import Presentation

class SignUpPresenterTests: XCTestCase {
    func test_signup_should_show_error_message_if_name_is_not_provided() throws {
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy)
        let signUpViewModel = makeSignUpViewModel(name: nil)
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeRequiredAlertViewModel(fieldName: "Nome"))
    }
    
    func test_signup_should_show_error_message_if_email_is_not_provided() throws {
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy)
        let signUpViewModel = makeSignUpViewModel(email: nil)
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeRequiredAlertViewModel(fieldName: "Email"))
    }
    
    func test_signup_should_show_error_message_if_password_is_not_provided() throws {
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy)
        let signUpViewModel = makeSignUpViewModel(password: nil)
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeRequiredAlertViewModel(fieldName: "Senha"))
    }
    
    func test_signup_should_show_error_message_if_password_confirmation_is_not_provided() throws {
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy)
        let signUpViewModel = makeSignUpViewModel(passwordConfirmation: nil)
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeRequiredAlertViewModel(fieldName: "Confirmar Senha"))
    }
    
    func test_signup_should_show_error_message_if_password_confirmation_not_match() throws {
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy)
        let signUpViewModel = makeSignUpViewModel(passwordConfirmation: "wrong_password")
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeInvalidAlertViewModel(fieldName: "Confirmar Senha"))
    }

    func test_signup_should_show_error_message_if_invalid_email_is_provided() throws {
        let emailValidatorSpy = EmailValidatorSpy()
        let alertViewSpy = AlertViewSpy()
        let sut = makeSut(alertView: alertViewSpy, emailValidator: emailValidatorSpy)
        let signUpViewModel = makeSignUpViewModel()
        emailValidatorSpy.simulateInvalidEmail()
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(alertViewSpy.viewModel, makeInvalidAlertViewModel(fieldName: "Email"))
    }
    
    func test_signup_should_call_email_validator_with_correct_email() throws {
        let emailValidatorSpy = EmailValidatorSpy()
        let sut = makeSut(emailValidator: emailValidatorSpy)
        let signUpViewModel = makeSignUpViewModel()
        sut.signup(viewModel: signUpViewModel)
        XCTAssertEqual(emailValidatorSpy.email, signUpViewModel.email)
    }
}

extension SignUpPresenterTests {
    func makeSut(alertView: AlertViewSpy = AlertViewSpy(), emailValidator: EmailValidatorSpy = EmailValidatorSpy()) -> SignUpPresenter {
        let sut = SignUpPresenter(alertView: alertView, emailValidator: emailValidator)
        return sut
    }
    
    func makeSignUpViewModel(name: String? = "any_name", email: String? = "any_email@email.com", password: String? = "any_password", passwordConfirmation: String? = "any_password") -> SignUpViewModel {
        return SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation)
    }
    
    func makeRequiredAlertViewModel(fieldName: String) -> AlertViewModel {
        return AlertViewModel(title: "Falha na validação", message: "O campo \(fieldName) é obrigatório")
    }

    func makeInvalidAlertViewModel(fieldName: String) -> AlertViewModel {
        return AlertViewModel(title: "Falha na validação", message: "O campo \(fieldName) é inválido")
    }
    
    class AlertViewSpy: AlertView {
        var viewModel: AlertViewModel?
        
        func showMessage(viewModel: AlertViewModel) {
            self.viewModel = viewModel
        }
    }
    
    class EmailValidatorSpy: EmailValidator {
        var isValid = true
        var email: String?
        
        func isValid(email: String) -> Bool {
            self.email = email
            return isValid
        }
        
        func simulateInvalidEmail() {
            isValid = false
        }
    }
}
