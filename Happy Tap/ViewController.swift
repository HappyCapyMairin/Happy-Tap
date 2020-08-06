//
//  ViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/1/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayerStartButton = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundStartButton = Bundle.main.path(forResource: "typewriterSoundStartButton", ofType: "mp3")
        do {
            audioPlayerStartButton = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundStartButton!))
        }
        catch {
            print(error)
        }
    }

    @IBAction func onStartGameButtonTapped(_ sender: Any) {
        audioPlayerStartButton.play()
    }
    
    
}

