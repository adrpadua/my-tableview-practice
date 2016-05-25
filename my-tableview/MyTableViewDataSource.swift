//
//  MyTableViewDataSource.swift
//  my-tableview
//
//  Created by Adrian Padua on 5/24/16.
//  Copyright © 2016 Adrian Padua. All rights reserved.
//

import UIKit

class MyTableViewDataSource: NSObject, UITableViewDataSource {

    // The TableViewDataSource will hold the collection of things in the table.
    var happyThings: [AnyObject]
    var cellIdentifier: String
    let header = "Happy Things"
    
    init(happyThings:[AnyObject], cellIdentifier: String!) {
        self.happyThings = happyThings
        self.cellIdentifier = cellIdentifier
    }
    
    // required
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return happyThings.count
    }
    
    // required
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        // get the data model
        let item = happyThings[indexPath.row]
        
        // configure cell
        cell.textLabel?.text = item as? String
        return cell
        
    }
    
    
}
