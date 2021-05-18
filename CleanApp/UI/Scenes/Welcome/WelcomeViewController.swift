//
//  WelcomeViewController.swift
//  UI
//
//  Created by Débora Lage on 12/05/21.
//

import Foundation
import UIKit
import Presentation

public final class WelcomeViewController: UIViewController, Storyboarded {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    public var login: (() -> Void)?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        title = "4Dev"
        loginButton.layer.cornerRadius = 5
        loginButton?.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        hideKeyBoardOnTap()
    }
    
    @objc
    private func loginButtonTapped() {
        login?()
    }
}
