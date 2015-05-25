//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by David Aghassi on 5/24/15.
//  Copyright (c) 2015 David Aghassi. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var currentImage: UIImageView!
    var currentPhoto : Photo?

    override func viewDidLoad() {
        super.viewDidLoad()

        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var thirdScene = segue.destinationViewController as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
    }

}
