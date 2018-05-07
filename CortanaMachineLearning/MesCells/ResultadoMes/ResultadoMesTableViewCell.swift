//
//  ResultadoMesTableViewCell.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 02/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ResultadoMesTableViewCell: UITableViewCell {

    @IBOutlet weak var txtAjusteMes: UITextView!
    @IBOutlet weak var mesAberto: UIButton!
    @IBOutlet weak var btnAjustar: UIButton!
    @IBOutlet weak var previsaoRecebimentos: UILabel!
    @IBOutlet weak var previsaoGastos: UILabel!
    @IBOutlet weak var rebimentosRealizados: UILabel!
    @IBOutlet weak var gastosRealizados: UILabel!
    @IBOutlet weak var resultadoValor: UILabel!
    @IBOutlet weak var dataCorrente: UILabel!
    @IBOutlet weak var labelRecebimento_Mes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
