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
    
    @IBAction func appendDigit(sender: UIButton) {// 数字按键
        let digit = sender.currentTitle!
        print(digit)
    }
    
    @IBAction func clear(sender: UIButton) {// 清空显示
    }
    
    @IBAction func equal(sender: UIButton) {// 求值运算
    }
    
    @IBAction func operate(sender: UIButton) {// 加减乘除
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
