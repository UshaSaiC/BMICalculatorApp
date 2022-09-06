//
//  SecondViewController.swift
//  BMICalculatorApp
//
//  Created by Usha Sai Chintha on 06/09/22.
//

//import Foundation // all th imports are internally frameworks developed by iOS. Foundation helps in working with most of the features of Swift programming language
import UIKit // UIKit helps in working with components specific to iOS like UIButton, UILabel or everything that start with UI etc.,


// creating view programatically without using storyboards
class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //when we get a new UIViewController, the view starts getting transparent. Inorder to differentate the second view occurence, we should set background color
        // view.backgroundColor = UIColor.red
        view.backgroundColor = .red // background color needs to be a UIColor, so automatically it converts the value to UIColor.red
        
        let label = UILabel()
        label.text = "Hello"
        
        // defining the location and size of label
        // CGRect -> stands for Cool Graphics Rectangle
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        // view.something -> view returns the current screen view
        // addSubview -> adds a child view to parent view (current screen view)
        view.addSubview(label) // label is of type UILabel which is inherited from UIView. So this line of code works without error as addSubview method needs a view input parameter
        
    }
    
}
