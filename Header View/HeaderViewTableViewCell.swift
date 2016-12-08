//
//  HeaderViewTableViewCell.swift
//  Header View
//
//  Created by Amreth on 12/8/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit

class HeaderViewTableViewCell: UITableViewCell {

    @IBOutlet weak var headerImageView: UIImageView!
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
