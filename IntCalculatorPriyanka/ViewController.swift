//
//  ViewController.swift
//  IntCalculatorPriyanka
//
//  Created by Priyanka Manjrekar on 2/10/16.
//  Copyright © 2016 Priyanka Manjrekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storedRegister: Int?
    
    var operation: String?

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
    
    @IBAction func operationPressed(sender: UIButton) {
        
        operation = sender.titleLabel?.text
        let displayText = displayPanel.text ?? ""
        storedRegister = Int(displayText)
        displayPanel.text = ""
    }
    
    

    @IBAction func equalsPressed(sender: UIButton) {
        
        let displayText = displayPanel.text ?? ""
        
        let displayRegister : Int? = Int(displayText)
        
        if(storedRegister != nil && displayRegister != nil && operation != nil){
            
            var result: String
            
            switch(operation!){
                
                case "+":
                    result = add(storedRegister!, addend: displayRegister!)
                case "-":
                    result = subtract(storedRegister!, subtrahend: displayRegister!)
                case "*":
                    result = multiply(storedRegister!, multiplier: displayRegister!)
                case "/":
                    result = divide(storedRegister!, divisor: displayRegister!)
                case "%":
                    result = remainder(storedRegister!, divisor: displayRegister!)
                default:
                    result = "I don't recognize '\(operation)'"
                
            }
            
            displayPanel.text = result
        }
    }
}

