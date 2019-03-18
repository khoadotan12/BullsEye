//
//  ViewController.swift
//  BullsEye
//
//  Created by Đỗ Tấn Khoa on 3/16/19.
//  Copyright © 2019 Đỗ Tấn Khoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startNewRound()
        scoreLabel.text = "0"
        roundLabel.text = "1"
    }
    
    @IBAction func showHitMeAlert() {
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        let message = "You scored \(points) points"
        let alert = UIAlertController(title: "Hello world!", message:  message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
        startNewRound()
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
    
    func startNewRound() {
        currentValue = 50
        slider.value = Float(currentValue)
        targetValue = Int.random(in: 1...100)
        targetLabel.text = String(targetValue)
    }
    
}

