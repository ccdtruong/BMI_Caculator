//
//  BMICanculator.swift
//  BMI Calculator
//
//  Created by ccdtruong on 15/9/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
struct BMICanculator {
    var bmi : BMI?
    mutating func calculate(_ height : Float, _ weight : Float){
        let bmiValue = weight / height / height
        
        if bmiValue < 18.5 {
            bmi = BMI(bmiValue: bmiValue, advice: "Eat much, please", color: UIColor(#colorLiteral(red: 0, green: 0.8567770123, blue: 1, alpha: 1)))
        }
        else if bmiValue < 24.5 {
            bmi = BMI(bmiValue: bmiValue, advice: "You're fit", color: UIColor(#colorLiteral(red: 0.4717113376, green: 1, blue: 0.6308870316, alpha: 1)))
        }
        else {
            bmi = BMI(bmiValue: bmiValue, advice: "Don't eat anything, please", color: UIColor(#colorLiteral(red: 1, green: 0.4626683593, blue: 0.4354534447, alpha: 1)))
        }
    }
    
    func getBMI() -> BMI{
        return bmi ?? BMI(bmiValue: 0.0, advice: "No advice", color: UIColor.black)
    }
}
