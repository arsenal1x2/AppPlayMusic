//
//  Storyboard+Extension.swift
//  AppPlayMusic
//
//  Created by LTT on 11/27/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

extension UIStoryboard {
    enum Storyboard: String {
        case main
        case news
        case gallery
        var filename: String {
            return rawValue.capitalized
        }
    }

    // MARK: - Convenience Initializers
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }

    // MARK: - Class Functions
    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.filename, bundle: bundle)
    }

    // MARK: - View Controller Instantiation from Generics
    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Couldn't instantiate view controller with identifier \(T.storyboardIdentifier) ")
        }
        return viewController
    }
}
