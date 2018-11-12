//
//  BrowserViewController.swift
//  AppPlayMusic
//
//  Created by LTT on 11/7/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class BrowserViewController: UIViewController {

    @IBOutlet weak var navigationbarView: NavigationBar!
    @IBOutlet weak var songTableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var avartaImg: UIImageView!
    let tableviewCellId = "tableviewCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
       // configureSearchBarTextField()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupImageView() {

    }
    func setupTableView() {
        songTableView.dataSource = self
        songTableView.delegate = self
        songTableView.register(UINib(nibName: "BrowserTableViewCell", bundle: nil), forCellReuseIdentifier: tableviewCellId)
    }

}
extension BrowserViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = songTableView.dequeueReusableCell(withIdentifier: tableviewCellId, for:indexPath) as! BrowserTableViewCell
        return cell
    }


}
