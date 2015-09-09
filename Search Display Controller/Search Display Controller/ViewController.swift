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
        setUpSearchController()

        
    }


    func setUpSearchController () -> Void {
        
        var mySearchResultsVC = self.storyboard?.instantiateViewControllerWithIdentifier("MySearchResultsViewController") as? MySearchResultsViewController
        if mySearchResultsVC != nil {
            
            searchController = UISearchController(searchResultsController: mySearchResultsVC)
            searchController?.searchResultsUpdater = mySearchResultUpdater
            searchController?.delegate = self
            
            searchBarWrapperView.addSubview((searchController?.searchBar)!)
            positionTheSearchBar()
        }
        
    }
    
    
    
    @IBOutlet weak var searchBarWrapperView: UIView!
    var searchBarContraints : [AnyObject]? = nil

    func positionTheSearchBar () -> Void {
        
        if searchBarContraints == nil {
            
            searchBarContraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[searchBar]-0-|",
                options: nil,
                metrics: nil,
                views: ["searchBar":(searchController?.searchBar)!])
            let verticalConstraint = NSLayoutConstraint(item: searchController!.searchBar,
                attribute: .Top,
                relatedBy:.Equal,
                toItem: searchBarWrapperView,
                attribute: .Top,
                multiplier: 1.0,
                constant: 0.0)
            searchBarContraints?.append(verticalConstraint)
            
        }
        
        searchController?.searchBar.setTranslatesAutoresizingMaskIntoConstraints(false)
        searchBarWrapperView.addConstraints(searchBarContraints!)
        
    }
    
    func resetSearchBarPostion () -> Void {
        
        searchBarWrapperView.removeConstraints(searchBarContraints!)
        searchController?.searchBar.setTranslatesAutoresizingMaskIntoConstraints(true)
        searchController?.searchBar.sizeToFit()
        
    }
    
    
    @IBAction func search(sender: AnyObject) {
        
        searchController?.active = true
        
    }
    
    
    
    func willPresentSearchController(searchController: UISearchController) {
        
        
        
    }
    
    func didPresentSearchController(searchController: UISearchController) {
        
        
    }
    
    
    func willDismissSearchController(searchController: UISearchController){
        
        
        
    }
    
    
    func didDismissSearchController(searchController: UISearchController) {
        
        positionTheSearchBar()
        
    }
    
    func presentSearchController(searchController: UISearchController) {
        
        resetSearchBarPostion()
        self.presentViewController(searchController, animated: true) { () -> Void in
            
            self.searchController?.searchBar.becomeFirstResponder()

        }

    }

    
}



