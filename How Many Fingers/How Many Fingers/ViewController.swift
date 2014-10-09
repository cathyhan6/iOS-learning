//
//  ViewController.swift
//  How Many Fingers
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
    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        var numberOfFingers = Int(arc4random() % 6)
        println(numberOfFingers)
        var numberString = String(numberOfFingers)
        if (numberString == guess.text) {
            message.text = "You got it!"
        }
        else {
            message.text = "Nope, I was holding up \(numberOfFingers). Try again!"
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

