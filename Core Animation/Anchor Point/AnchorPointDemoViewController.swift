//
//  ViewController.swift
//  Anchor Point
//
//  Created by SB 8 on 9/14/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import UIKit
import QuartzCore

class AnchorPointDemoViewController: UIViewController {
    @IBOutlet weak var initialView: UIView!

    @IBOutlet weak var viewOfInterest: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

        
        
    
    
    }


    func setUpView () {
        
        let image = UIImage(named: "Snowman.png")
        viewOfInterest.layer.contents = image!.CGImage
        viewOfInterest.layer.contentsScale = UIScreen.mainScreen().scale
        viewOfInterest.layer.masksToBounds = true
        viewOfInterest.layer.borderWidth = 2.0
        viewOfInterest.layer.borderColor = UIColor.blueColor().CGColor
        viewOfInterest.alpha = 0.5

        
        initialView.layer.contents = image!.CGImage
        initialView.layer.contentsScale = UIScreen.mainScreen().scale
        initialView.layer.masksToBounds = true
        initialView.layer.borderWidth = 2.0
        initialView.layer.borderColor = UIColor.blueColor().CGColor

        
        
    }

}

