//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ccdtruong on 15/9/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultValue: UILabel!
    @IBOutlet weak var adviceText: UILabel!
    
    var bmi : BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultValue.text = String(format: "%.1f", bmi?.bmiValue ?? 0.0)
        adviceText.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
