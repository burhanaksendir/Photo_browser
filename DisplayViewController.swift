//
//  DisplayViewController.swift
//  projectC
//
//  Created by PASCAL ARINGO ODEK on 12/18/14.
//  Copyright (c) 2014 Pascal Odek. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto: Photo?

    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var image=UIImage(named: currentPhoto!.filename)
        currentImage.image=image
        
        self.title = currentPhoto!.name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var thirdScene=segue.destinationViewController as InfoViewController
        
        // Pass the selected object to the new view controller.
        thirdScene.currentPhoto=currentPhoto
        
    }
    

}
