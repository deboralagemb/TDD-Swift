//
//  NavigationController.swift
//  UI
//
//  Created by Débora Lage on 16/05/21.
//

import Foundation
import UIKit

public final class NavigationController: UINavigationController {
    private var currentViewController: UIViewController?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    public convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    private func setup() {
        navigationBar.barTintColor = Color.primaryDark
        navigationBar.tintColor = UIColor.white
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.isTranslucent = false
        navigationBar.barStyle = .black
    }
    
    public func setRootViewController(_ viewControler: UIViewController) {
        setViewControllers([viewControler], animated: true)
        currentViewController = viewControler
        hideBackButtonText()
        viewControler.navigationItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
    }
    
    public func hideBackButtonText() {
        currentViewController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: nil, action: nil)
    }
    
    public func pushViewController(_ viewController: UIViewController) {
        pushViewController(viewController, animated: true)
        currentViewController = viewController
        hideBackButtonText()
    }
}
