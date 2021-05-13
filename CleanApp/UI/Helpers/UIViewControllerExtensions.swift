//
//  UIViewControllerExtensions.swift
//  UI
//
//  Created by Débora Lage on 12/05/21.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyBoardOnTap() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        gesture.cancelsTouchesInView = false
        view.addGestureRecognizer(gesture)
    }
    
    @objc
    private func hideKeyboard() {
        view.endEditing(true)
    }
}
