//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Adrian Kaluzinski on 19/12/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceAction: UILabel!
    
    @IBAction func recalculate(_ sender: Any) {
         
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue;
    }


}
