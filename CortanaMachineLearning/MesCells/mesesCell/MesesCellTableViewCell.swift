//
//  MesesCellTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 02/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class MesesCellTableViewCell: UITableViewCell {

    @IBOutlet weak var mesAnterior: UIButton!
    @IBOutlet weak var mesAtual: UIButton!
    @IBOutlet weak var mesFuturo: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
