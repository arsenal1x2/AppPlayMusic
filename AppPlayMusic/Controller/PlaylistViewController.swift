//
//  PlaylistViewController.swift
//  AppPlayMusic
//
//  Created by LTT on 11/7/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {


    @IBOutlet weak var navigationbarView: NavigationBar!
    @IBOutlet weak var playlistTableView: UITableView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    let cellCollectionViewID = "cellCollection"
    var arrSong:[Song] = [Song]()
    var arrCategories:[Categories] = [Categories]()

    let cellTableViewID = "cellTable"
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setupViews()

        // Do any additional setup after loading the view.
    }
    func loadData() {
        arrSong = [
            Song(singer: "Sơn Tùng", name: "Cơn mưa ngang qua",time:"3:05"),
            Song(singer: "Đan Trường", name: "Mãi mãi một tình yêu",time:"3:05"),
                    Song(singer: "Trương Thế Vinh", name: "Tình yêu hoa gió",time:"3:05"),
                    Song(singer: "The men", name: "Chờ em trong đêm",time:"3:05"),
                    Song(singer: "The men", name: "Chỉ yêu mình em",time:"3:05"),
                    Song(singer: "Nam Cường", name: "Khó",time:"3:05")
                  ]
        arrCategories = [
                            Categories(name: "Jazz"),
                            Categories(name: "Ballad"),
                            Categories(name: "Rock"),
                            Categories(name: "Pop"),
                            Categories(name: "Folk"),
                            Categories(name: "Fav"),
                            Categories(name: "Jazz")

                        ]

    }
    func setupViews() {

        setupTableView()
        setupCollectioView()
        navigationbarView.title.text = "Browser"
    }
    func setupCollectioView() {
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        categoriesCollectionView.register(UINib.init(nibName: "PlaylistCategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellCollectionViewID)
        let selectedIndexPath = IndexPath(item: 0, section: 0)
        categoriesCollectionView.selectItem(at: selectedIndexPath, animated: false, scrollPosition: .bottom)
    }
    func setupTableView() {
        playlistTableView.dataSource = self
        playlistTableView.delegate = self
        playlistTableView.register(UINib.init(nibName: "PlaylistTableViewCell", bundle: nil), forCellReuseIdentifier: cellTableViewID)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension PlaylistViewController:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCategories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: cellCollectionViewID, for: indexPath) as! PlaylistCategoriesCollectionViewCell
        cell.title.text = arrCategories[indexPath.row].name
        return cell
    }


}
extension PlaylistViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSong.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = playlistTableView.dequeueReusableCell(withIdentifier: cellTableViewID, for: indexPath) as! PlaylistTableViewCell
        cell.nameSingleLbl.text = arrSong[indexPath.row].singer
        cell.nameSongLbl.text =   arrSong[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PlayViewController") as! PlayViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
