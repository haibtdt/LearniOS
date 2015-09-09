//
//  MySearchResultsViewController.swift
//  
//
//  Created by SB 8 on 9/9/15.
//
//

import UIKit

class MySearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let tableCellID = "vn.haibui.SearchResultItemCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(tableCellID) as! UITableViewCell
        return cell
        
        
    }


}
