//
//  CalculatorViewController.swift
//  SwiftCalculatorDemo
//
//  Created by csdc-iMac on 16/4/4.
//  Copyright © 2016年 Cloudox. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    var notZero = false // 记录显示的数字是否是0
    var result:(Double, Double, String) = (0, 0, "+")// 记录运算数、运算结果
    var labelValue:Double {// 处理显示的labelstring和计算的double之间的转换
        get {
            return NSNumberFormatter().numberFromString(showLabel.text!)!.doubleValue
        }
        set {
            showLabel.text = "\(newValue)"
        }
    }
    
    @IBAction func appendDigit(sender: UIButton) {// 数字按键
        let digit = sender.currentTitle!
        if notZero {// 显示的不是0，要把新添加的数字加到末尾
            showLabel.text = showLabel.text! + digit
        } else if notZero == false && digit == "0" {// 当前显示了0，再点击0不做处理
        } else {// 当前显示的是0，点击非0键直接替换0
            showLabel.text = digit
            notZero = true
        }
        
    }
    
    @IBAction func clear(sender: UIButton) {// 清空显示
        showLabel.text = "0"
        notZero = false
    }
    
    @IBAction func equal(sender: UIButton) {// 求值运算
        result.1 = labelValue
        print("\(result)运算结果为")
        switch result.2 {
            case "+":
            result.0 = result.0 + result.1
            case "-":
            result.0 = result.0 - result.1
            case "*":
            result.0 = result.0 * result.1
            case "/":
            result.0 = result.0 / result.1
        default:
            break
        }
        print(result.0)
        labelValue = result.0
    }
    
    @IBAction func operate(sender: UIButton) {// 加减乘除
        let operation = sender.currentTitle!
        result.0 = labelValue
        result.2 = operation
        labelValue = 0 // 把label置空
        notZero = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
