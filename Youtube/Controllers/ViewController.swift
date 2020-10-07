//
//  ViewController.swift
//  Youtube
//
//  Created by Crypto on 10/4/20.
//  Copyright © 2020 Crypto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var videosTableView: UITableView!
    
    // MARK: - Vars
    var model = Model()
    var videos = [Video]()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        model.delegate = self
        model.getVideos()
    }

    // MARK: - Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        videosTableView.reloadData()
        
    }
// MARK: - Table view methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = videosTableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)
        let title = self.videos[indexPath.row].videoTitle
        cell.textLabel?.text = title
        return cell
    }
    
}

