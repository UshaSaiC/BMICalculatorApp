//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 05/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
    }
    
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmiValue = weight/pow(height,2)
        
        let secondViewController = SecondViewController()
        secondViewController.bmiValue = String(format: "%.1f", bmiValue)
        
        self.present(secondViewController, animated: true, completion: nil)
    }
}

