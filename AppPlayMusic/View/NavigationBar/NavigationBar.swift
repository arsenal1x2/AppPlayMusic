//
//  NavigationBar.swift
//  AppPlayMusic
//
//  Created by LTT on 11/12/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class NavigationBar: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var avartaImg: UIImageView!
    @IBOutlet weak var title: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        Bundle.main.loadNibNamed("NavigationBar", owner: self, options: nil)
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        avartaImg.layer.cornerRadius = 0.5 * avartaImg.frame.width
        avartaImg.clipsToBounds = true
    }

}
