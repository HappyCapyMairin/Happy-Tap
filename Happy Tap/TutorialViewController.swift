////
////  TutorialViewController.swift
////  Happy Tap
////
////  Created by Mairin Jarvis Castellano on 8/3/20.
////  Copyright © 2020 Mairin Jarvis Castellano. All rights reserved.
////
//
//import UIKit
//
//class TutorialViewController: UIViewController {
//    @IBOutlet weak var firstLabelTextField: UILabel!
//    @IBOutlet weak var secondLabelTextField: UILabel!
//    @IBOutlet weak var thirdLabelTextField: UILabel!
//    @IBOutlet weak var fourthLabelTextField: UILabel!
//    @IBOutlet weak var fifthLabelTextField: UILabel!
//    @IBOutlet weak var labelDisplay: UILabel!
//
//
//    override func viewDidLoad() {
//        firstLabelTextField.isHidden = false
//        secondLabelTextField.isHidden = true
//        thirdLabelTextField.isHidden = true
//        fourthLabelTextField.isHidden = true
//        fifthLabelTextField.isHidden = true
//        var counter = 0
//        var textInLabel = labelDisplay.text!
//
//        super.viewDidLoad()
//
//    }
//
//    @IBAction func firstButtonIsPressed(_ sender: Any) {
//        firstLabelTextField.isHidden = true
//        secondLabelTextField.isHidden = false
//        var counter = 1
//    }
//
//    @IBAction func secondButtonIsPressed(_ sender: Any) {
//        secondLabelTextField.isHidden = true
//        thirdLabelTextField.isHidden = false
//        var counter = 2
//    }
//
//    @IBAction func thirdButtonIsPressed(_ sender: Any) {
//        thirdLabelTextField.isHidden = true
//        fourthLabelTextField.isHidden = false
//        var counter = 3
//    }
//
//    @IBAction func fourthButtonIsPressed(_ sender: Any) {
//        fourthLabelTextField.isHidden = false
//        fifthLabelTextField.isHidden = true
//        var counter = 4
//    }
//    textInLabel = "\(counter)"
//
//
//}
