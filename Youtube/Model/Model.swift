//
//  Model.swift
//  Youtube
//
//  Created by Crypto on 10/5/20.
//  Copyright © 2020 Crypto. All rights reserved.
//

import Foundation

class Model {
    
    // MARK: - Get videos
    func getVideos () {
        // URL Object
        let url = URL(string: Constants.API_URL)
        guard url != nil else {return}
        
        // URL Session object
        let session = URLSession.shared
        
        //Data Task from URLSession object
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil {
                print(error!.localizedDescription)
                return
            }
            else {
                
            }
        }
        
        // start data task 
        dataTask.resume()
    }
}
