//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 05/09/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
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
        let bmiCalculation = weight/pow(height,2)
        bmiValue = String(format: "%.1f", bmiCalculation)
    
        // first parameter is segue identifier, which should be added in main-storyboard after creating a segue
        // second parameter talks on who is the initiator of segue
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // there could me multiple views that can open from a single screen, in that scenario we add a condition to check what segue is getting triggered and accordingly do the next steps. Segue can be uniquely identified via the identifier names we give while creation of it
        if segue.identifier == "goToResult"{
            
            // segue.destination is of type UIViewController and when we try and access bmiValue directly.. it wont work
            // as keyword performs downcasting. as! means forced downcasting
            // downcasting : the act of casting a reference of a base class to one of its derived classes.
            // In here from UIViewController base class where as ResultViewController is derived class
            let destination = segue.destination as! ResultViewController
            
            destination.bmiValue = bmiValue
        }
    }
}

