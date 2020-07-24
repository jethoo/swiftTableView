//
//  ViewController.swift
//  DemoTableView
//
//  Created by jeewan bhusal on 23.7.2020.
//  Copyright © 2020 jeewan bhusal. All rights reserved.
//

import UIKit

//import UITableViewDelegate and UITableViewDataSource
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //two methods needed for table view are numberOfRowsInSection and cellForRowAt
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    /*
        Note: Steps to add Table View
            1. In the view, drag and drop table view
            2. Remove all the width and height margin and add constraints to make it take full height and width of the mobile view
            3. Then, control + drag upward to viewcontroller to add delegate and datasource outlets
            4. In the identifier , add a name "name" , that name will be used while coding inside the viewcontroller class
            5. Ways to add custom cell, should also be practiced
     
            
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

