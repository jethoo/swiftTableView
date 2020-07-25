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
    //define an array of values which can be displayed
    let productList = ["iPhone", "Oppo", "Samsung", "Vivo"]
    let priceList = ["1250.00", "1100.00", "899.00", "750.00"]
    let images = ["iphone","oppo","samsung","vivo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //inhereting from the TableViewCell.swift class
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.deviceName.text = productList[indexPath.row]
        tempCell.devicePrice.text = priceList[indexPath.row]
        tempCell.deviceImage.image =  UIImage(named: images[indexPath.row] + ".png" )
       
        return tempCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let detailVC:ProductDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailViewController") as! ProductDetailViewController
        // assign the values to the local variable declared in ProductDetailViewController Class
         detailVC.productName = productList[indexPath.row]
         detailVC.productPrice = priceList[indexPath.row]
         //detailVC.productImage = UIImage(named: images[indexPath.row] + ".png" )!
         // make it navigate to ProductDetailViewController
         self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    
    
    /*
        Note: Steps to add Table View
            1. In the view, drag and drop table view
            2. Remove all the width and height margin and add constraints to make it take full height and width of the mobile view
            3. Then, control + drag upward to viewcontroller to add delegate and datasource outlets
            4. In the identifier , add a name "name" , that name will be used while coding inside the viewcontroller class
            5. Ways to add custom cell, should also be practiced
     
            
     */


}

