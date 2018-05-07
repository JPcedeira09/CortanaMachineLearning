//
//  SaudeFinanceiraTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 02/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class SaudeFinanceiraTableViewCell: UITableViewCell {

    @IBOutlet weak var infoAdvisor: UIButton!
    @IBOutlet weak var faceAdvisor: UIImageView!
    @IBOutlet weak var statusAdvisor: UILabel!
    @IBOutlet weak var txtAdvisor: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
