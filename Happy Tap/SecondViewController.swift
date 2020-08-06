//
//  SecondViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/4/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var gifView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifView.loadGif(name: "tappingGif")

      
    }
    

   
}
