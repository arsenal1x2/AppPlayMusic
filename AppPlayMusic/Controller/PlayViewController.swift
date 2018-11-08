//
//  PlayViewController.swift
//  AppPlayMusic
//
//  Created by LTT on 11/7/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    @IBOutlet weak var imgSong: UIImageView!
    @IBOutlet weak var avartaImageView: UIImageView!

    override func viewDidLoad() {
        setupViews()
        super.viewDidLoad()
    }
    func setupImageView() {
        avartaImageView.layer.cornerRadius = 0.5 * avartaImageView.frame.width
        avartaImageView.clipsToBounds = true
        imgSong.layer.cornerRadius = 0.5 * imgSong.frame.width
        imgSong.clipsToBounds = true
    }
    func setupViews() {

         setupImageView()
    }

    @IBAction func clickBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

