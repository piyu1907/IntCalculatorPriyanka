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
    

}

