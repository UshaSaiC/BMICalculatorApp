//
//  ResultViewController.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 06/09/22.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        // dismissed or removes the current view controller
        // self.dismiss(animated: true, completion: nil)
        // swift is mart enogh to understand that if we are calling methods like dismiss from a view, it basically means we want to dismiss the current view. SO self is not required
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
