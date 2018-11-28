//
//  UIViewController+Extension.swift
//  AppPlayMusic
//
//  Created by LTT on 11/27/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import Foundation

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController : StoryboardIdentifiable { }
