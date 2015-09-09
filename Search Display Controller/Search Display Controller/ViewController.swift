//
//  ViewController.swift
//  Search Display Controller
//
//  Created by SB 8 on 9/9/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchControllerDelegate {
    
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
            searchController?.delegate = self
            
        }
        
    }
    
    
    @IBAction func search(sender: AnyObject) {
        
        setUpSearch()
        searchController?.active = true
        
    }
    
    
    func willPresentSearchController(searchController: UISearchController) {
        
        
        
    }
    
    func didPresentSearchController(searchController: UISearchController) {
        
        
    }
    
    
    func willDismissSearchController(searchController: UISearchController){
        
        
        
    }
    
    
    func didDismissSearchController(searchController: UISearchController) {
        
        
    }
    
//     Called after the search controller's search bar has agreed to begin editing or when 'active' is set to YES. If you choose not to present the controller yourself or do not implement this method, a default presentation is performed on your behalf.
    func presentSearchController(searchController: UISearchController) {
        
        self.presentViewController(searchController, animated: true) { () -> Void in
            
            
            
        }

        
    }

    
}



