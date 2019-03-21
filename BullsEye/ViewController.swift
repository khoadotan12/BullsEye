//
//  ViewController.swift
//  BullsEye
//
//  Created by Đỗ Tấn Khoa on 3/16/19.
//  Copyright © 2019 Đỗ Tấn Khoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    @IBOutlet weak var slider: UISlider!
    var targetValue = 0
    var score = 0
    var round = 0
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resetGame()
    }
    
    @IBAction func showHitMeAlert() {
        //Instance variables: currentValue, targetValue, score
        let difference = abs(currentValue - targetValue) //Local variable
        var points = 100 - difference //Local variable
        
        let title: String //Local variables
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "You scored \(points) points" //Local variable
        let alert = UIAlertController(title: title, message:  message, preferredStyle: .alert) //Local variable
        let action = UIAlertAction(title: "OK", style: .cancel, handler: {
            action in
            self.startNewRound()
        }) //Local variable
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }
    
    func startNewRound() {
        round += 1
        currentValue = 50
        slider.value = Float(currentValue)
        targetValue = Int.random(in: 1...100)
        updateLabels()
    }
    
    func updateLabels() {
        scoreLabel.text = String(score)
        targetLabel.text = String(targetValue)
        roundLabel.text = String(round)
    }
    
    @IBAction func resetGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
}

