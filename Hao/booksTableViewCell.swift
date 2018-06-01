//
//  booksTableViewCell.swift
//  Hao
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class booksTableViewCell: UITableViewCell {

    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Year: UILabel!
    @IBOutlet weak var Author: UILabel!
    @IBOutlet weak var Gallery: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
