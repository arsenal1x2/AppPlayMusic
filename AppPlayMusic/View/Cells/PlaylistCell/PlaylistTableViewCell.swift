//
//  PlaylistTableViewCell.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var nameSingleLbl: UILabel!
    @IBOutlet weak var nameSongLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
