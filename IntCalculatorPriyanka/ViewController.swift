//
//  ViewController.swift
//  IntCalculatorPriyanka
//
//  Created by Priyanka Manjrekar on 2/10/16.
//  Copyright © 2016 Priyanka Manjrekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayPanel: UILabel!
    
    
    @IBAction func numberPressed(sender: UIButton) {
        
        let buttonText = sender.titleLabel?.text ?? ""
        
        let displayText = displayPanel.text ?? ""
        
        displayPanel.text = displayText + buttonText
    }
    
    
    @IBAction func clearPressed(sender: UIButton) {
        displayPanel.text = ""
    }
    
    
    @IBAction func changeSign(sender: AnyObject) {
        
        let displayText = displayPanel.text ?? ""
        
        let possibleInt : Int? = Int(displayText)
        
        if let actualInt = possibleInt {
            displayPanel.text = "\(actualInt * -1)"
        }
    }
    

}

