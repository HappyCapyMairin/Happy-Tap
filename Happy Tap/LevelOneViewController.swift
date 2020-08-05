//
//  LevelOneViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/5/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit

class LevelOneViewController: UIViewController {
    @IBOutlet weak var levelOneCountDownLabel: UILabel!
    @IBOutlet weak var levelOneScoreDisplayLabel: UILabel!
    
    var levelOneTapCount = 0
    var levelOneCountDown = 10
    var levelOneTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTimer()
    }
    
    func runTimer() {
        levelOneTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print(self.levelOneCountDown)
            if self.levelOneCountDown != 0 {
                self.levelOneCountDown -= 1
                self.levelOneCountDownLabel.text = String(self.levelOneCountDown)
            }
            else {
                print(self.levelOneTapCount)
                self.levelOneTimer.invalidate()
                self.levelOneScoreDisplayLabel.text = "You got \(self.levelOneTapCount) taps in 20 seconds. Play again to beat your score!"
                self.levelOneCountDownLabel.text = ""
            }
            
        }
    }
    
    @IBAction func whenLevelOneButtonIsTapped(_ sender: Any) {
        levelOneTapCount += 1
    }
}
