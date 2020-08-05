//
//  TutorialVersionTwoViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/4/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit

class LevelZeroViewController: UIViewController {
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var scoreDisplayLabel: UILabel!
    @IBOutlet weak var liveTapCountLabel: UILabel!
    
    var tapCount = 0
    var countDown = 13
    var timer = Timer()
    var canTap = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            switch self.countDown {
            case 13:
                self.countDownLabel.text = "Ready"
            case 12:
                self.countDownLabel.text = "Set"
            case 11:
                self.countDownLabel.text = "Go!"
                self.canTap = true
            case 0:
                print(self.tapCount)
                self.timer.invalidate()
                self.scoreDisplayLabel.text = "You got \(self.tapCount) taps in 10 seconds. Play again to beat your score!"
                self.countDownLabel.text = ""
            default:
                self.countDownLabel.text = String(self.countDown)
            }
            self.countDown -= 1
        }
    }
    
    @IBAction func whenButtonIsTapped(_ sender: Any) {
        if canTap {
            self.tapCount += 1
            if countDown != 0 {
                liveTapCountLabel.text = "Live tap count: \(self.tapCount)"
            }
            else {
                self.liveTapCountLabel.text = ""
            }
        }
    }
}
