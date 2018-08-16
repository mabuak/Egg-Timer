//
//  ViewController.swift
//  Egg Timer
//
//  Created by Fachruzi Ramadhan on 16/08/2018.
//  Copyright © 2018 dhanhost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    var isTimerRun = true
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func play(_ sender: Any) {
        
        if isTimerRun {
            timer.invalidate()
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTimer), userInfo: nil, repeats: true)
        
        isTimerRun = true
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        
        timerLabel.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {
        
            time -= 10
            
            timerLabel.text = String(time)
            
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        time = 210
        
        timerLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func decreaseTimer(){
        
        if time > 0 {
            time -= 1
            
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
    }
}

