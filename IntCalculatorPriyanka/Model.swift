//
//  Model.swift
//  IntCalculatorPriyanka
//
//  Created by Priyanka Manjrekar on 2/10/16.
//  Copyright © 2016 Priyanka Manjrekar. All rights reserved.
//

import Foundation

func add (augend:Int, addend:Int) -> String {

    return "\(augend + addend)"
}

func subtract (minuend:Int, subtrahend:Int) -> String {
    
    return "\(minuend - subtrahend)"
}

func multiply (multiplacand:Int, multiplier:Int) -> String {

    return "\(multiplacand * multiplier)"
}

func divide (dividend:Int, divisor:Int) -> String {
    
    return "\(dividend / divisor)"
}

func remainder (dividend:Int, divisor:Int) -> String {
    
    return "\(dividend % divisor)"
}