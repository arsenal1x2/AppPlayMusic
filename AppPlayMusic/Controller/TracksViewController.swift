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
    var listSongs: [Song]!
    let dataService = DataService.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        createLoadingView()
        setupTableView()
        setupNavigationBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupNavigationBar() {
        self.navigationbarView.title.text = "All Tracks"
    }

    func loadData() {
        dataService.fetchData(url: API.baseURL+API.VN) { (success, error, songs) in
            if success {
                DispatchQueue.main.async {
                    guard let list = songs else { return }
                    self.listSongs = list
                    self.listSongs.sort(by: { $0 < $1 })
                    self.trackTableView.reloadData()
                    self.dismiss(animated: false, completion: nil)
                }
            }
        }
    }

    func setupTableView() {
        trackTableView.register(PlaylistTableViewCell.self)
        trackTableView.dataSource = self
        trackTableView.delegate = self
    }

    func createLoadingView() {
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.activityIndicatorViewStyle = .gray
        loadingIndicator.startAnimating()
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
    }
}

//MARK: UITableViewDataSource
extension TracksViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listSongs ==  nil { return 1}
        return listSongs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if listSongs == nil { return UITableViewCell() }
        let cell: PlaylistTableViewCell = trackTableView.dequeueResuableCell(forIndexPath: indexPath)
        let track = listSongs[indexPath.row]
        cell.configCell(with: track)
        return cell
    }
}
