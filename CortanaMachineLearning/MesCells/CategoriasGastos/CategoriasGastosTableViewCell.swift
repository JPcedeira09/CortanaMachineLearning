//
//  CategoriasGastosTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 02/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class CategoriasGastosTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCategoria: UIImageView!
    @IBOutlet weak var nomeCategoria: UILabel!
    @IBOutlet weak var valorCategoria: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
