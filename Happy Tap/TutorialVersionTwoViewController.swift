//
//  TutorialVersionTwoViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/4/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit

class TutorialVersionTwoViewController: UIViewController {
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var scoreDisplayLabel: UILabel!
    var tapCount = 0
    var countDown = 10
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print(self.countDown)
            if self.countDown != 0 {
                self.countDown -= 1
                self.countDownLabel.text = String(self.countDown)
            }
            else {
                print(self.tapCount)
                self.timer.invalidate()
                self.scoreDisplayLabel.text = "You got \(self.tapCount) taps in 10 seconds. Play again to beat your score!"
                self.countDownLabel.text = ""
            }
        }
    }
    
    @IBAction func whenButtonIsTapped(_ sender: Any) {
        tapCount += 1
    }
}
