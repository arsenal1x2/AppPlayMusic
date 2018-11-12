//
//  TracksViewController.swift
//  AppPlayMusic
//
//  Created by LTT on 11/7/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class TracksViewController: UIViewController {


    @IBOutlet weak var navigationbarView: NavigationBar!
    @IBOutlet weak var trackTableView: UITableView!
    var arrSong:[Song] = [Song]()


    let cellTableViewID = "cellTable"
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setupTableView()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadData() {
        let arrSongInit = [
            Song(singer: "Sơn Tùng", name: "Cơn mưa ngang qua",time:"3:05"),
            Song(singer: "Đan Trường", name: "Mãi mãi một tình yêu",time:"3:23"),
            Song(singer: "Trương Thế Vinh", name: "Tình yêu hoa gió",time:"3:45"),
            Song(singer: "The men", name: "Chờ em trong đêm",time:"2:01"),
            Song(singer: "The men", name: "Chỉ yêu mình em",time:"4:02"),
            Song(singer: "Nam Cường", name: "Khó",time:"1:58")
        ]
        arrSong = arrSongInit.sorted(by: { $0 < $1 })

    }
    func setupTableView() {
        trackTableView.dataSource = self
        trackTableView.delegate = self
        trackTableView.register(UINib.init(nibName: "TrackTableViewCell", bundle: nil), forCellReuseIdentifier: cellTableViewID)

    }



}
extension TracksViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSong.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trackTableView.dequeueReusableCell(withIdentifier: cellTableViewID, for: indexPath) as! TrackTableViewCell
        cell.nameSingLbl.text = arrSong[indexPath.row].singer
        cell.nameSongLbl.text = arrSong[indexPath.row].name
        cell.timeLbl.text = arrSong[indexPath.row].time
        return cell
    }


}
