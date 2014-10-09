//
//  ViewController.swift
//  Is It Prime
//
//  Created by Cathy Han on 9/20/14.
//  Copyright (c) 2014 Cathy Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func checkPrime(sender: AnyObject) {
        var isNotPrime = false
        var intNum = number.text.toInt()
        if (intNum != nil) {
            if (intNum == 1) {
                message.text = "1 is not prime."
            } else {
                var i = 2
                while (!isNotPrime && i<intNum) {
                    if (intNum! % i == 0) {
                        isNotPrime = true
                    }
                    else {
                        i=i+1
                    }
                }
                if isNotPrime {
                    message.text = number.text + " is not prime."
                } else {
                    message.text = number.text + " is prime."
                }
            }} else {
            message.text = "Please enter a number."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

