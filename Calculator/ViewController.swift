//
//  ViewController.swift
//  Calculator
//
//  Created by Thomas Yim on 7/29/17.
//  Copyright © 2017 Thomas Yim. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
        
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var action: UITextField!
    
    @IBOutlet weak var answer: UILabel!


    @IBAction func actionButton(_ sender: Any) {
        if let actionText = action.text?.lowercased(){
            switch actionText{
            case "addition":
                addAction()
            case "subtraction":
                subAction()
            case "multiplication":
                multipAction()
            case "division":
                divideAction()
            default:
                answer.text = "You spelled the action wrong or put a non-number in the number field"
            
            }
    }
    }
    func setAnswerText(solution: Double) {
        answer.text = "\(solution)"
    }
    
    func addAction() {
        if let num1 = number1.text, let num2 = number2.text {
            
            let num1Double = Double(num1)
            let num2Double = Double(num2)
            
            if let num1Double = num1Double, let num2Double = num2Double {
                
                let solution = num1Double + num2Double
                setAnswerText(solution: solution)
            }
            
        }
    }
    func subAction() {
        if let num1 = number1.text, let num2 = number2.text {
            
            let num1Double = Double(num1)
            let num2Double = Double(num2)
            
            if let num1Double = num1Double, let num2Double = num2Double {
                
                let solution = num1Double - num2Double
                setAnswerText(solution: solution)
            }
            
        }
    }
    func multipAction() {
        if let num1 = number1.text, let num2 = number2.text {
            
            let num1Double = Double(num1)
            let num2Double = Double(num2)
            
            if let num1Double = num1Double, let num2Double = num2Double {
                
                let solution = num1Double * num2Double
                setAnswerText(solution: solution)
            }
            
        }
    }
    func divideAction() {
        if let num1 = number1.text, let num2 = number2.text {
            
            let num1Double = Double(num1)
            let num2Double = Double(num2)
            
            if let num1Double = num1Double, let num2Double = num2Double {
                
                let solution = num1Double / num2Double
                setAnswerText(solution: solution)
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

