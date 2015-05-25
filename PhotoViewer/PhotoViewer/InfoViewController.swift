//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by David Aghassi on 5/24/15.
//  Copyright (c) 2015 David Aghassi. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    @IBAction func DISMISS(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var currentPhoto: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsLabel.text = currentPhoto!.notes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
