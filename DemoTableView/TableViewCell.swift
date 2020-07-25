//
//  TableViewCell.swift
//  DemoTableView
//
//  Created by jeewan bhusal on 24.7.2020.
//  Copyright © 2020 jeewan bhusal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var deviceName: UILabel!
    @IBOutlet var devicePrice: UILabel!
    @IBOutlet var deviceImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
