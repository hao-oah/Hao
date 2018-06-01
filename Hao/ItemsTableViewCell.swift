//
//  ItemsViewCell.swift
//  Hao
//
//  Created by epita on 16/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Year: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
