//
//  PessoasViewController.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 04/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class PessoasViewController: UIViewController {
    
    @IBOutlet weak var tablePessoas: UITableView!
    

    let homem2 = #imageLiteral(resourceName: "homem2")
    let homem1 = #imageLiteral(resourceName: "homem1")
    let homem3 = #imageLiteral(resourceName: "homem3")
    let mulher1 = #imageLiteral(resourceName: "mulher1")
    let mulher2 = #imageLiteral(resourceName: "mulher2")
    let mulher3 = #imageLiteral(resourceName: "mulher3")
    var nomes : [String]?
    
    var imagens : [UIImage]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nomes  = [ "Gabriel","João Paulo", "Luciano", "Mariana", "Bianca", "Pamela"]
        
        imagens = [ self.homem1 , self.homem2, self.homem3, self.mulher1, self.mulher2, self.mulher3]
        
        self.tablePessoas.delegate = self
        self.tablePessoas.dataSource = self
        
        self.tablePessoas.register(UINib(nibName: "PessoasTableViewCell", bundle: nil), forCellReuseIdentifier: "PessoasTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension PessoasViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PessoasTableViewCell", for: indexPath) as! PessoasTableViewCell
        
        let imagensIndex = self.imagens![indexPath.row]
    
        cell.viewImagem.layer.borderWidth = 1
        cell.viewImagem.layer.borderColor = UIColor.black.cgColor
        cell.viewImagem.layer.cornerRadius =  cell.viewImagem.frame.width/2

        let nomesIndex = self.nomes![indexPath.row]
        
        cell.pessoa.image = imagensIndex
        cell.nomeDaPessoa.text = nomesIndex
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "pessoasSegue", sender: nil)
    }
}
