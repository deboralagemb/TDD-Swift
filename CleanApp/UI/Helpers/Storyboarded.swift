//
//  Storyboarded.swift
//  UI
//
//  Created by Débora Lage on 12/05/21.
//

import Foundation
import UIKit

public protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static public func instantiate() -> Self {
        let vcName = String(describing: self)
        let sbName = vcName.components(separatedBy: "ViewController")[0]
        let bundle = Bundle(for: Self.self)
        let sb = UIStoryboard(name: sbName, bundle: bundle)
        return sb.instantiateViewController(identifier: vcName) as! Self
    }
}
