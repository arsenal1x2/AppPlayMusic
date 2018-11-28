//
//  PlaylistTableViewCell.swift
//  AppPlayMusic
//
//  Created by LTT on 11/8/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var viewButton: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nameTrackLabel: UILabel!
    @IBOutlet weak var nameSingerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI(isSelected: selected)

    }

    func setView(view: UIView, hidden: Bool) {
        view.isHidden = hidden
    }

    func setupUI(isSelected: Bool) {
        let hidden = self.isSelected ? false : true
        setView(view: avatar, hidden: hidden)
        setView(view: viewButton, hidden: hidden)
        let color = UIColor.hexStringToUIColor(hex: "#A901DB")
        self.nameTrackLabel.textColor = self.isSelected ? color : UIColor.black
        self.nameSingerLabel.textColor = self.isSelected ? color : UIColor.black
    }

    func configCell(with track: Song) {
        nameSingerLabel.text = track.singer
        nameTrackLabel.text = track.name
        avatar.cacheImage(urlString: track.avarta)
    }
}
