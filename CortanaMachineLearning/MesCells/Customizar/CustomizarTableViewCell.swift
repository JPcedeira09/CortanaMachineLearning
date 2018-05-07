//
//  CustomizarTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 03/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class CustomizarTableViewCell: UITableViewCell {

    @IBOutlet weak var btncustomizar: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
