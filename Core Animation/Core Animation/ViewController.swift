//
//  ViewController.swift
//  Core Animation
//
//  Created by SB 8 on 9/10/15.
//  Copyright © 2015 vn.haibui. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    @IBOutlet weak var layerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let blueLayer = CALayer()
        blueLayer.frame = CGRectMake(50.0, 50.0, 100.0, 100.0)
        blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        
        //add it to our view
        layerView.layer.addSublayer(blueLayer)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

