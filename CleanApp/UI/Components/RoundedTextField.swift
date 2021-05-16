//
//  RoundedTextField.swift
//  UI
//
//  Created by Débora Lage on 16/05/21.
//

import Foundation
import UIKit

public final class RoundedTextField: UITextField {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        layer.borderColor = Color.primaryLight.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
    }
}
