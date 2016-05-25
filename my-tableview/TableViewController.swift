//
//  TableViewController.swift
//  my-tableview
//
//  Created by Adrian Padua on 5/24/16.
//  Copyright © 2016 Adrian Padua. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let myDataSource = MyTableViewDataSource(happyThings: ["Simple Plan", "Blink 182", "Yellowcard", "Fall Out Boy"], cellIdentifier: "cell")
    let myDelegate = MyTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = myDataSource
        self.tableView.delegate = myDelegate
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
