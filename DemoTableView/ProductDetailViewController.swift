//
//  ProductDetailViewController.swift
//  DemoTableView
//
//  Created by jeewan bhusal on 24.7.2020.
//  Copyright © 2020 jeewan bhusal. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet var productNames: UILabel!
    
    @IBOutlet var productPrices: UILabel!
    //@IBOutlet var productImages: UIImageView!
    
    //Local Variables to store reference to name, image and price
    var productName:String!  // holds the product name
    var productPrice:String!  // holds the price
    //var productImage:UIImage! // holds the product image
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // assign values to the outlets
        productNames.text = productName
        productPrices.text = productPrice
        //productImages.image = productImage
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
