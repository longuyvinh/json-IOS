//
//  myCustomCell.swift
//  magicIOS
//
//  Created by macbook on 4/4/16.
//  Copyright © 2016 magic. All rights reserved.
//

import UIKit

class myCustomCell: UITableViewCell {

    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var bodyCell: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
