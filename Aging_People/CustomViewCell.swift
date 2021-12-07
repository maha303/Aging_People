//
//  CustomViewCell.swift
//  Aging_People
//
//  Created by Maha saad on 04/05/1443 AH.
//

import UIKit

class CustomViewCell: UITableViewCell {
    
    @IBOutlet weak var Age: UILabel!
    
    @IBOutlet weak var Name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
