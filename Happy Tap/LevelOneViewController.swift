//
//  LevelOneViewController.swift
//  Happy Tap
//
//  Created by Mairin Jarvis Castellano on 8/5/20.
//  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
//

import UIKit
import AVFoundation

class levelOneViewController: UIViewController {
    @IBOutlet weak var levelOneCountDownLabel: UILabel!
    @IBOutlet weak var levelOneScoreDisplayLabel: UILabel!
    @IBOutlet weak var levelOneLiveTapCount: UILabel!
    
    var levelOneTapCount = 0
    var levelOneCountDown = 20.00
    var levelOneTimer = Timer()
    var levelOneCanTapAndHearSound = false
    var audioPlayerLevel1Button = AVAudioPlayer()
    var gameOver = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runLevelOneTimer()
        
        let soundLevel1Button = Bundle.main.path(forResource: "soundForButton", ofType: "mp3")
        do {
            audioPlayerLevel1Button = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundLevel1Button!))
        }
        catch {
            print(error)
        }
    }
    // goal: make it into a fail/ win game
    // win if you get over 140 taps in 20 sec
    // fail if you don't and hti the reset try again button
    func runLevelOneTimer() {
        levelOneTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            switch self.levelOneCountDown {
            case 19.01...20.00:
                self.levelOneCountDownLabel.text = "Ready!"
                self.levelOneCanTapAndHearSound = false
            case 18.01...19.00:
                self.levelOneCountDownLabel.text = "Set!"
                self.levelOneCanTapAndHearSound = false
            case 17.01...18.00:
                self.levelOneCountDownLabel.text = "Tap!"
                self.levelOneCanTapAndHearSound = true
            case 0.00...0.99:
                self.levelOneTimer.invalidate()
                self.levelOneCanTapAndHearSound = false
                self.levelOneScoreDisplayLabel.text = "You got \(self.levelOneTapCount) taps in 20 seconds. Play again to beat your score!"
                self.levelOneCountDownLabel.text = ""
            default:
                let levelOneCountDownStringTwoDecimals = String(format: "%.1f", self.levelOneCountDown)
                self.levelOneCountDownLabel.text = String(levelOneCountDownStringTwoDecimals)
                self.levelOneCanTapAndHearSound = true
            }
            self.levelOneCountDown -= 0.01
        }
    }
    func resetGame() {
        levelOneCountDown = 20.00
        levelOneTapCount = 0
        levelOneCanTapAndHearSound = false
        gameOver = false
        self.levelOneScoreDisplayLabel.text = ""
    }

    func displayWinningMessage(message: String) {
    let alert = UIAlertController(title: message, message: nil, preferredStyle: .alert)
    let alertAction = UIAlertAction(title: "Reset", style: .default) {
        (action) in self.resetGame()
    }
    alert.addAction(alertAction)
    present(alert, animated: true, completion: nil)
    gameOver = true
    }
        
    @IBAction func whenLevelOneButtonIsTapped(_ sender: Any) {
        if levelOneCanTapAndHearSound == true {
            self.levelOneTapCount += 1
            levelOneLiveTapCount.text = "Live Tap Count: \(self.levelOneTapCount)"
            audioPlayerLevel1Button.play()
        }
    }
}
