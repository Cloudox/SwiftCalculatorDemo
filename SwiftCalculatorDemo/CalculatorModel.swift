//
//  CalculatorModel.swift
//  SwiftCalculatorDemo
//
//  Created by Cloudox on 16/4/5.
//  Copyright © 2016年 Cloudox. All rights reserved.
//

import Foundation

class CalculatorModel {
    func evaluate(var temp:(Double, Double, String)) -> (Double, Double, String) {
        switch temp.2 {
        case "+":
            temp.0 = temp.0 + temp.1
        case "-":
            temp.0 = temp.0 - temp.1
        case "*":
            temp.0 = temp.0 * temp.1
        case "/":
            temp.0 = temp.0 / temp.1
        default:
            break
        }
        return temp
    }
}