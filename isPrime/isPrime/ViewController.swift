//
//  ViewController.swift
//  isPrime
//
//  Created by Wilson on 2017-02-04.
//  Copyright © 2017 com.Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var primeField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func primeButton(_ sender: Any) {
        
        var i = 1
        var isPrime = true
        
        if let input = primeField.text {
            
            let input = Int(input)
            
            if let numberInput = input {
                while i < numberInput {
                    if numberInput % i == 0 && i != 1 {
                        isPrime = false
                    }
                    i += 1
                }
                
            } else {
                resultLabel.text = "Please enter a positive whole number"
            }
        }
        
        if isPrime {
            resultLabel.text = "\(primeField.text!) is a prime number"
        } else {
            resultLabel.text = "\(primeField.text!) is not a prime number"
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

