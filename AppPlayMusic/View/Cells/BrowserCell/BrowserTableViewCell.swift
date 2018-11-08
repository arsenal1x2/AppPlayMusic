//
//  BrowserTableViewCell.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class BrowserTableViewCell: UITableViewCell {

    @IBOutlet weak var btnGet: UIButton!
    @IBOutlet weak var singerLbl: UILabel!
    @IBOutlet weak var nameSongLbl: UILabel!
    @IBOutlet weak var imgSong: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupViews(){
       btnGet.layer.cornerRadius = 15.0
       btnGet.clipsToBounds = true
    }
}
