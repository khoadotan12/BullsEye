//
//  ViewController.swift
//  BullsEye
//
//  Created by Đỗ Tấn Khoa on 3/16/19.
//  Copyright © 2019 Đỗ Tấn Khoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showHitMeAlert() {
        let alert = UIAlertController(title: "Hello world!", message: "This is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .cancel, handler: nil);
        alert.addAction(action)
        present(alert, animated: true)
    }

}

