//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Adrian Kaluzinski on 12/12/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        var label = UILabel()
        label.text = "test text"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
