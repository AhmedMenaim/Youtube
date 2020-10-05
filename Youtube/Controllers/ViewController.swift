//
//  ViewController.swift
//  Youtube
//
//  Created by Crypto on 10/4/20.
//  Copyright © 2020 Crypto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

