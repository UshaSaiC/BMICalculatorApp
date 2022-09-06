//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 06/09/22.
//

import Foundation

struct CalculateBrain{
    
    var bmiValue: Float? = nil
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmiValue = weight/pow(height,2)
    }
    
    func getBMIValue() -> String{
        let bmiLabelValue = String(format: "%.1f", bmiValue!)
        return bmiLabelValue
    }
}
