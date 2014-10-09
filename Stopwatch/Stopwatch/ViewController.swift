//
//  ViewController.swift
//  Stopwatch
//
//  Created by Cathy Han on 9/20/14.
//  Copyright (c) 2014 Cathy Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: NSTimer?
    
    @IBAction func startButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func endButton(sender: AnyObject) {
        timer?.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer?.invalidate()
        count = 0
        counter.text = "0"
    }
    
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    var count = 0
    func result() {
        var num = counter.text?.toInt()
        count++
        counter.text = "\(count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

