//
//  ViewController.swift
//  Search Display Controller
//
//  Created by SB 8 on 9/9/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var searchController : UISearchController? = nil
    let mySearchResultUpdater = MySearchResultUpdater()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    func setUpSearch () -> Void {
        
        var mySearchResultsVC = self.storyboard?.instantiateViewControllerWithIdentifier("MySearchResultsViewController") as? MySearchResultsViewController
        if mySearchResultsVC != nil {
            
            searchController = UISearchController(searchResultsController: mySearchResultsVC)
            searchController?.searchResultsUpdater = mySearchResultUpdater
            
            
        }
        
    }
    
    
    @IBAction func search(sender: AnyObject) {
        
        setUpSearch()
        self.presentViewController(searchController!, animated: true) { () -> Void in
            
            
            
        }
        
    }
    
    
    
}



