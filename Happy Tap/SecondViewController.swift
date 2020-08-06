//
//  SecondViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/4/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit
import AVFoundation //

class secondViewController: UIViewController {
    @IBOutlet weak var gifView: UIImageView!
    
    var audioPlayerSecondVCButton = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifView.loadGif(name: "tappingGif")
        
        let soundSecondVCButton = Bundle.main.path(forResource: "typewriterSoundStartButton", ofType: "mp3")
        do {
            audioPlayerSecondVCButton = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundSecondVCButton!))
        }
        catch {
            print(error)
        }
    }
    
    @IBAction func onLevel0ButtonTapped(_ sender: Any) {
        audioPlayerSecondVCButton.play()
    }
    
    @IBAction func onLevel1ButtonTapped(_ sender: Any) {
        audioPlayerSecondVCButton.play()
    }
    
}
