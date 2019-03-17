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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = Int(slider.value.rounded())
    }
    
    @IBAction func showHitMeAlert() {
        let message = "The value of the slider is now: \(currentValue)"
        let alert = UIAlertController(title: "Hello world!", message:  message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .cancel, handler: nil);
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }

}

