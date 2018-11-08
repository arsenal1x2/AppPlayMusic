//
//  PlaylistCategoriesCollectionViewCell.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class PlaylistCategoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewBackground.layer.cornerRadius = viewBackground.frame.width * 0.5
        viewBackground.clipsToBounds =  true
        viewBackground.backgroundColor = UIColor.hexStringToUIColor(hex: "FFF0F2")
        title.textColor = UIColor.hexStringToUIColor(hex: "FF4060")
    }
    override var isHighlighted: Bool {
        didSet {
            viewBackground.backgroundColor = isHighlighted ? UIColor.hexStringToUIColor(hex: "FF4060") : UIColor.hexStringToUIColor(hex: "FFF0F2")
            title.textColor = isHighlighted ? UIColor.white : UIColor.hexStringToUIColor(hex: "FF4060")
        }
    }


    override var isSelected: Bool {
        didSet {
            viewBackground.backgroundColor = isSelected ? UIColor.hexStringToUIColor(hex: "FF4060") : UIColor.hexStringToUIColor(hex: "FFF0F2")
            title.textColor = isSelected ? UIColor.white : UIColor.hexStringToUIColor(hex: "FF4060")
        }
    }
}
