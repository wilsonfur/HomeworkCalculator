//
//  ViewController.swift
//  HomeworkCalculator
//
//  Created by wilson on 2017/11/8.
//  Copyright © 2017年 wilson. All rights reserved.
//

import UIKit

class CalculatorController: UIViewController {
    //IBOutlet
    @IBOutlet weak var calculatorResultLabel: UILabel!
    
    //宣告
    var keyCount:Double = 0
    var inputSecond:Double = 0
    var displayNumber:Double = 0
    var firstNumber:Double = 0
    var tempNumber1:Double = 0
    var tempNumber2:Double = 0
    var mathPlus = false
    var mathMius = false
    var mathMultiply = false
    var mathDivide = false


    //顯示第一組輸入數字
    func addNumber(number:Double) -> Double {
        if keyCount <= 10 {
            keyCount += 1
            if keyCount == 1 {
                displayNumber = number
            } else if keyCount <= 10 {
                displayNumber = displayNumber * 10 + number
            } else if keyCount == 1 && number == 0 {
                displayNumber = 0
            }
        }
        return displayNumber
    }

    
    //加法
    func mathPlus(first:Double) -> Double {
        mathPlus = true
        mathMius = false
        mathMultiply = false
        mathDivide = false
        tempNumber1 = first
        //prDouble(firstNumber)
        return first
    }
    //減法
    func mathMius(first:Double) -> Double {
        mathPlus = false
        mathMius = true
        mathMultiply = false
        mathDivide = false
        tempNumber1 = first
        //prDouble(firstNumber)
        return first
    }
    //乘法
    func mathMultiply(first:Double) -> Double {
        mathPlus = false
        mathMius = false
        mathMultiply = true
        mathDivide = false
        tempNumber1 = first
        //prDouble(firstNumber)
        return first
    }
    //除法
    func mathDivide(first:Double) -> Double {
        mathPlus = false
        mathMius = false
        mathMultiply = false
        mathDivide = true
        tempNumber1 = first
        //prDouble(firstNumber)
        return first
    }
    //顯示運算結果
    func mathEqual(second:Double) -> Double  {
        tempNumber2 = second
        return second
    }
    
    //清空值
    func numberClear() {
        calculatorResultLabel.text = "\(displayNumber)"
        keyCount = 0
    }
    
    @IBAction func equalBtn(_ sender: Any) {
        mathEqual(second: displayNumber)
        if mathPlus == true {
            let resultNumber = tempNumber1 + tempNumber2
            calculatorResultLabel.text = "\(resultNumber)"
            displayNumber = resultNumber
        } else if mathMius == true {
            let resultNumber = tempNumber1 - tempNumber2
            calculatorResultLabel.text = "\(resultNumber)"
            displayNumber = resultNumber
        } else if mathMultiply == true {
            let resultNumber = tempNumber1 * tempNumber2
            calculatorResultLabel.text = "\(resultNumber)"
            displayNumber = resultNumber
        } else if mathDivide == true {
            let resultNumber = tempNumber1 / tempNumber2
            calculatorResultLabel.text = "\(resultNumber)"
            displayNumber = resultNumber
        }
       
    }
    
    @IBAction func plusBtn(_ sender: Any) {
        numberClear()
        mathPlus(first: displayNumber)
    }
    
    @IBAction func minsBtn(_ sender: Any) {
        numberClear()
        mathMius(first: displayNumber)
    }
    @IBAction func multiplyBtn(_ sender: Any) {
        numberClear()
        mathMultiply(first: displayNumber)
    }
    @IBAction func divideBtn(_ sender: Any) {
        numberClear()
        mathDivide(first: displayNumber)
    }
    
    @IBAction func allCleralBtn(_ sender: Any) {
        calculatorResultLabel.text = "0"
        displayNumber = 0
        keyCount = 0
    }
    
    @IBAction func number0Btn(_ sender: Any) {
        addNumber(number:0)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number1Btn(_ sender: Any) {
        addNumber(number:1)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number2Btn(_ sender: Any) {
        addNumber(number:2)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number3Btn(_ sender: Any) {
        addNumber(number:3)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number4Btn(_ sender: Any) {
        addNumber(number:4)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number5Btn(_ sender: Any) {
        addNumber(number:5)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number6Btn(_ sender: Any) {
        addNumber(number:6)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number7Btn(_ sender: Any) {
        addNumber(number:7)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number8Btn(_ sender: Any) {
        addNumber(number:8)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func number9Btn(_ sender: Any) {
        addNumber(number:9)
        calculatorResultLabel.text = "\(displayNumber)"
    }
    @IBAction func numberDotBtn(_ sender: Any) {

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}

