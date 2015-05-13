//
//  ViewController.swift
//  PickerData
//
//  Created by David Aghassi on 5/10/15.
//  Copyright (c) 2015 David Aghassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var data = ["Happy", "Sad", "Angry", "Optimistic", "Pessimistic"]

    //Necessary methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return data[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor : UIColor
        
        switch row {
        case 0...2:
            newBackgroundColor = UIColor.yellowColor()
        case 3,5:
            newBackgroundColor = UIColor.redColor()
        default:
            newBackgroundColor = UIColor(red: 0.5, green: 0.3, blue: 0.25, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
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

