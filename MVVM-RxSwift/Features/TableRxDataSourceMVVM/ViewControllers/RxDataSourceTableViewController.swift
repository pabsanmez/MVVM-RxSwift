//
//  RxDataSourceTableViewController.swift
//  MVVM-RxSwift
//
//  Created by Pablo Sánchez Gómez on 10/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import UIKit

class RxDataSourceTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
