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
            if actionText == "addition"{
                answer.text = "\("Double(number1) + Double(number2))"
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

