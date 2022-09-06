//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 06/09/22.
//

import UIKit

struct CalculateBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height,2)
        
        // below is a tuple of color literals. Color literals are created via typing #colorLiteral( + enter button
        let color = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), overweight: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        if bmiValue<18.5{
            // bmi = BMI(value: bmiValue, advice: "eat more snacks", color: UIColor.blue)
            bmi = BMI(value: bmiValue, advice: "eat more snacks", color: color.underweight)
        } else if bmiValue<24.9{
            bmi = BMI(value: bmiValue, advice: "awesome", color: color.healthy)
        } else{
            bmi = BMI(value: bmiValue, advice: "eat less snacks", color: color.overweight)
        }
    }
    
    func getBMIValue() -> String{
        let bmiLabelValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiLabelValue
    }
    
    func getAdvice() -> String{
        let bmiAdvice = bmi?.advice ?? "No advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor{
        let bmiColor = bmi?.color ?? #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return bmiColor
    }
    
}
