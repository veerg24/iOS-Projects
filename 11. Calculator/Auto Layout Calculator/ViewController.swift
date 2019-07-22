//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Veer Gadodia on 7/17/19.
//  Copyright © 2019 Veer Gadodia. All rights reserved.
//

import UIKit

extension Decimal {
    var significantFractionalDecimalDigits: Int {
        return max(-exponent, 0)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var calcOutput: UILabel!
    
    @IBOutlet weak var button_c: UIButton!
    @IBOutlet weak var button_plusminus: UIButton!
    @IBOutlet weak var button_percent: UIButton!
    @IBOutlet weak var button_divide: UIButton!
    
    @IBOutlet weak var button_multiply: UIButton!
    @IBOutlet weak var button_minus: UIButton!
    @IBOutlet weak var button_plus: UIButton!
    @IBOutlet weak var button_equal: UIButton!
    @IBOutlet weak var button_point: UIButton!
    
    @IBOutlet weak var button_0: UIButton!
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_4: UIButton!
    @IBOutlet weak var button_5: UIButton!
    @IBOutlet weak var button_6: UIButton!
    @IBOutlet weak var button_7: UIButton!
    @IBOutlet weak var button_8: UIButton!
    @IBOutlet weak var button_9: UIButton!
    
    var calcOperator = ""
    var number1 : Float = 0
    var number2 : Float = 0
    var total : Float = 0
    var temp = true
    var temp2 = true
    var plusminus = false

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button_c.layer.cornerRadius = 40.75
        button_plusminus.layer.cornerRadius = 40.75
        button_percent.layer.cornerRadius = 40.75
        button_divide.layer.cornerRadius = 40.75
        
        button_multiply.layer.cornerRadius = 40.75
        button_minus.layer.cornerRadius = 40.75
        button_plus.layer.cornerRadius = 40.75
        button_equal.layer.cornerRadius = 40.75
        button_point.layer.cornerRadius = 40.75
        
        button_0.layer.cornerRadius = 40.75
        button_1.layer.cornerRadius = 40.75
        button_2.layer.cornerRadius = 40.75
        button_3.layer.cornerRadius = 40.75
        button_4.layer.cornerRadius = 40.75
        button_5.layer.cornerRadius = 40.75
        button_6.layer.cornerRadius = 40.75
        button_7.layer.cornerRadius = 40.75
        button_8.layer.cornerRadius = 40.75
        button_9.layer.cornerRadius = 40.75
        
        calcOutput.text = String(0)
        
    }
    
    // Restart Function
    @IBAction func button_C(_ sender: UIButton) {
        calcOutput.text = "0"
        calcOperator = ""
        number1 = 0
        number2 = 0
        total = 0
        temp = true
        temp2 = true
    }
    
    // Math Operator Functions
    @IBAction func additionButton(_ sender: UIButton) {
        if temp2 == true {
            calcOperator = "+"
            temp2 = false
        }
        else if temp2 == false {
            if calcOperator == "+" {
                if temp == true{
                    total += (number1 + number2)
                    temp = false
                }
                else {
                    total += number2
                }
            }
            else if calcOperator == "x"{
                if temp == true{
                    total += (number1 * number2)
                    temp = false
                }
                else {
                    total *= number2
                }
            }
            else if calcOperator == "/"{
                if temp == true{
                    total += (number1/number2)
                    temp = false
                }
                else {
                    total /= number2
                }
            }
            else if calcOperator == "-"{
                if temp == true{
                    total += (number1 - number2)
                    temp = false
                }
                else {
                    total -= number2
                }
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = "+"
            number1 = 0
            number2 = 0
            //temp2 = true
        }
        //calcOutput.text = String(number2)
        
    }
    
    @IBAction func subtractionButton(_ sender: UIButton) {
        if temp2 == true {
            calcOperator = "-"
            temp2 = false
        }
        else if temp2 == false {
            if calcOperator == "+" {
                if temp == true{
                    total += (number1 + number2)
                    temp = false
                }
                else {
                    total += number2
                }
            }
            else if calcOperator == "x"{
                if temp == true{
                    total += (number1 * number2)
                    temp = false
                }
                else {
                    total *= number2
                }
            }
            else if calcOperator == "/"{
                if temp == true{
                    total += (number1/number2)
                    temp = false
                }
                else {
                    total /= number2
                }
            }
            else if calcOperator == "-"{
                if temp == true{
                    total += (number1 - number2)
                    temp = false
                }
                else {
                    total -= number2
                }
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = "-"
            number1 = 0
            number2 = 0
            //temp2 = true
        }
        //calcOutput.text = String(number2)
    }
    
    @IBAction func multiplicationButton(_ sender: UIButton) {
        if temp2 == true {
            calcOperator = "x"
            temp2 = false
        }
        else if temp2 == false {
            if calcOperator == "+" {
                if temp == true{
                    total += (number1 + number2)
                    temp = false
                }
                else {
                    total += number2
                }
            }
            else if calcOperator == "x"{
                if temp == true{
                    total += (number1 * number2)
                    temp = false
                }
                else {
                    total *= number2
                }
            }
            else if calcOperator == "/"{
                if temp == true{
                    total += (number1/number2)
                    temp = false
                }
                else {
                    total /= number2
                }
            }
            else if calcOperator == "-"{
                if temp == true{
                    total += (number1 - number2)
                    temp = false
                }
                else {
                    total -= number2
                }
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = "x"
            number1 = 0
            number2 = 0
            //temp2 = true
        }
        //calcOutput.text = String(number2)
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        if temp2 == true {
            calcOperator = "/"
            temp2 = false
        }
        else if temp2 == false {
            if calcOperator == "+" {
                if temp == true{
                    total += (number1 + number2)
                    temp = false
                }
                else {
                    total += number2
                }
            }
            else if calcOperator == "x"{
                if temp == true{
                    total += (number1 * number2)
                    temp = false
                }
                else {
                    total *= number2
                }
            }
            else if calcOperator == "/"{
                if temp == true{
                    total += (number1/number2)
                    temp = false
                }
                else {
                    total /= number2
                }
            }
            else if calcOperator == "-"{
                if temp == true{
                    total += (number1 - number2)
                    temp = false
                }
                else {
                    total -= number2
                }
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = "/"
            number1 = 0
            number2 = 0
            //temp2 = true
        }
        //calcOutput.text = String(number2)
    }
    
    // Numbers Functions
    @IBAction func button0(_ sender: UIButton) {
        buttonInput(numint: 0)
    }
    
    @IBAction func button1(_ sender: UIButton) {
        buttonInput(numint: 1)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        buttonInput(numint: 2)
    }
    
    @IBAction func button3(_ sender: UIButton) {
        buttonInput(numint: 3)
    }
    
    @IBAction func button4(_ sender: UIButton) {
        buttonInput(numint: 4)
    }
    
    @IBAction func button5(_ sender: UIButton) {
        buttonInput(numint: 5)
    }
    
    @IBAction func button6(_ sender: UIButton) {
        buttonInput(numint: 6)
    }
    
    @IBAction func button7(_ sender: UIButton) {
        buttonInput(numint: 7)
    }
    
    @IBAction func button8(_ sender: UIButton) {
        buttonInput(numint: 8)
    }
    
    @IBAction func button9(_ sender: UIButton) {
        buttonInput(numint: 9)
    }
    
    
    @IBAction func buttonPoint(_ sender: UIButton) {
        
    }
    
    
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        /*
        if temp == true{
            number1 = number1 * -1
            let finaltext = checkFloat(float: number1)
            calcOutput.text = finaltext
        }
        else {
            number2 = number2 * -1
            let finaltext = checkFloat(float: number2)
            calcOutput.text = finaltext
        }
 */
    }
    
    func buttonInput ( numint : Float ) {
        if calcOperator != "" {
            number2 = (number2 * 10) + numint
            let finaltext = checkFloat(float: number2)
            calcOutput.text = finaltext
        }
        else {
            number1 = (number1 * 10) + numint
            let finaltext = checkFloat(float: number1)
            calcOutput.text = finaltext
        }
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        temp2 = true
        if calcOperator == "+" {
            if temp == true{
                total += (number1 + number2)
                temp = false
            }
            else {
                total += number2
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = ""
            number1 = 0
            number2 = 0
        }
        else if calcOperator == "-" {
            if temp == true {
                total += (number1 - number2)
                temp = false
            }
            else{
                total -= number2
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = ""
            number1 = 0
            number2 = 0
        }
        else if calcOperator == "x" {
            if temp == true {
                total += (number1 * number2)
                temp = false
            }
            else{
                total *= number2
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = ""
            number1 = 0
            number2 = 0
        }
        else if calcOperator == "/" {
            if temp == true {
                total += (number1 / number2)
                temp = false
            }
            else{
                total /= number2
            }
            let finaltext = checkFloat(float: total)
            calcOutput.text = finaltext
            calcOperator = ""
            number1 = 0
            number2 = 0
        }
    }
    
    func checkFloat (float : Float) -> String {
        let temp3 = Decimal(string: String(float))!
        var num : Int = temp3.significantFractionalDecimalDigits // 3 what you meant
        var final : String = ""
        if num >= 4{
            final = String(format: "%.\(4)f", float)
        }
        else{
            final = String(format: "%.\(num)f", float)
        }
        return final
    }
    

    
    
    
}

