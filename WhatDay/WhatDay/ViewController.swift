//
//  ViewController.swift
//  WhatDay
//
//  Created by David Aghassi on 5/10/15.
//  Copyright (c) 2015 David Aghassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func displayDay(sender: AnyObject) {
        var chosenDate = datePicker.date
        var formatter = NSDateFormatter()
        
        formatter.dateFormat = "EEEE"
        
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        let alert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        // add ok button
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
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

