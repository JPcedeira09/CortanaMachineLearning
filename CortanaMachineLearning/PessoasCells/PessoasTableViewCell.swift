//
//  PessoasTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 04/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class PessoasTableViewCell: UITableViewCell {

    @IBOutlet weak var viewImagem: UIView!
    @IBOutlet weak var nomeDaPessoa: UILabel!
    @IBOutlet weak var pessoa: UIImageView!
    
    @IBOutlet weak var mediaRecebimentos: UILabel!
    @IBOutlet weak var mediaGastos: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
