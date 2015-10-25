//
//  ViewController.swift
//  Stopwatch
//
//  Created by Sachin Virdy on 10/24/15.
//  Copyright (c) 2015 Sachin Virdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    
    func updateTime() {
        count++
        time.text = "\(count)"
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    
    @IBOutlet var time: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        
        count = 0
        
        time.text = "0"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

