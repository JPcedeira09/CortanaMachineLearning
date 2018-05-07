//
//  GraficoObjetivosTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 03/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class GraficoObjetivosTableViewCell: UITableViewCell {

    @IBOutlet weak var viewGrafico: UIView!
    @IBOutlet weak var txtLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
