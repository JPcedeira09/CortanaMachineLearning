//
//  ViewController.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 02/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func dismissBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func showPopUP(){
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUp") as! PopUPViewViewController
        
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    let myColor = UIColor.white
    @IBOutlet weak var btnMes: UIButton!
    @IBOutlet weak var btnHistorico: UIButton!
    
    @IBOutlet weak var branquinho2: UIView!
    @IBOutlet weak var branquinho1: UIView!
    @IBAction func mes(_ sender: UIButton) {
        
        let whiteColor = UIColor.white
        let clearColor = UIColor.clear

        self.branquinho1.backgroundColor = whiteColor
        self.branquinho2.backgroundColor = clearColor
    }
    
    @IBAction func historico(_ sender: UIButton) {
        let whiteColor = UIColor.white
        let clearColor = UIColor.clear
        
        self.branquinho2.backgroundColor = whiteColor
        self.branquinho1.backgroundColor = clearColor
    }
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        
        
        btnMes.layer.cornerRadius = 2
        btnHistorico.layer.cornerRadius = 2
        btnMes.layer.borderWidth = 1
        btnHistorico.layer.borderWidth = 1

        btnMes.layer.borderColor = self.myColor.cgColor
        btnHistorico.layer.borderColor = self.myColor.cgColor

        
        
        super.viewDidLoad()
        self.table.dataSource = self
        self.table.delegate = self
        
        self.table.register(UINib(nibName: "CustomizarTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomizarTableViewCell")
        
        self.table.register(UINib(nibName: "HistoricoAcompTableViewCell", bundle: nil), forCellReuseIdentifier: "HistoricoAcompTableViewCell")
        
        self.table.register(UINib(nibName: "GraficoObjetivosTableViewCell", bundle: nil), forCellReuseIdentifier: "GraficoObjetivosTableViewCell")
        
        self.table.register(UINib(nibName: "HeadObjetivosTableViewCell", bundle: nil), forCellReuseIdentifier: "HeadObjetivosTableViewCell")
        
        self.table.register(UINib(nibName: "FicouComDuvidasTableViewCell", bundle: nil), forCellReuseIdentifier: "FicouComDuvidasTableViewCell")
        
        self.table.register(UINib(nibName: "RebimentoMesTableViewCell", bundle: nil), forCellReuseIdentifier: "RebimentoMesTableViewCell")
        
        
        self.table.register(UINib(nibName: "SaudeFinanceiraTableViewCell", bundle: nil), forCellReuseIdentifier: "SaudeFinanceiraTableViewCell")
        
        self.table.register(UINib(nibName: "MesesCellTableViewCell", bundle: nil), forCellReuseIdentifier: "MesesCellTableViewCell")
        
        self.table.register(UINib(nibName: "ResultadoMesTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultadoMesTableViewCell")
        
        self.table.register(UINib(nibName: "CategoriasGastosTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoriasGastosTableViewCell")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.showPopUP()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        
        if indexPath.row == 0 {
            let cell = table.dequeueReusableCell(withIdentifier: "MesesCellTableViewCell") as! MesesCellTableViewCell
            
            return cell
        }else
            if indexPath.row == 1 {
                let cell = table.dequeueReusableCell(withIdentifier: "SaudeFinanceiraTableViewCell") as! SaudeFinanceiraTableViewCell
                
                cell.faceAdvisor.image = #imageLiteral(resourceName: "happy")
                cell.txtAdvisor.text = "Neste mês voce ja gastou 50% do previsto, fique te olho para não deixar a peteca cair!!!"
                cell.statusAdvisor.text = "Fique de Olho!"
                return cell
            }
            else if indexPath.row == 2 {
                
                let cell = table.dequeueReusableCell(withIdentifier: "ResultadoMesTableViewCell") as! ResultadoMesTableViewCell
                
                cell.mesAberto.layer.cornerRadius = 5
                cell.txtAjusteMes.text = "Ajuste aqui suas previsões, e tenha uma melhor e mais eficiente gestão financeira durante o seu mês."
                cell.btnAjustar.layer.cornerRadius = 5
                
                let money = "R$ "
                cell.previsaoGastos.text = "Previsão Gastos"
                cell.previsaoRecebimentos.text = money+"5.000,00"
                
                cell.gastosRealizados.text = money+"1.700,00"
                cell.rebimentosRealizados.text = money+"5.000,00"
                
                cell.dataCorrente.text = "01/05 a 31/05"
                
                let resultado = "Resultado em "
                cell.labelRecebimento_Mes.text = resultado+"Maio"
                cell.resultadoValor.text = "1.500,00"
                
                return cell
                
            } else if indexPath.row == 3 {
                let cell = table.dequeueReusableCell(withIdentifier: "RebimentoMesTableViewCell") as! RebimentoMesTableViewCell
                
                cell.btnMesAberto.layer.cornerRadius = 5
                
                return cell
                
            } else if indexPath.row == 4 {
                let cell = table.dequeueReusableCell(withIdentifier: "CategoriasGastosTableViewCell") as! CategoriasGastosTableViewCell
                
                cell.imageCategoria.image = #imageLiteral(resourceName: "recive")
                cell.nomeCategoria.text = "Resgate de Investimentos"
                cell.valorCategoria.text = "0,00"
                
                return cell
            } else if indexPath.row == 5 {
                let cell = table.dequeueReusableCell(withIdentifier: "CategoriasGastosTableViewCell") as! CategoriasGastosTableViewCell
                
                cell.imageCategoria.image = #imageLiteral(resourceName: "money")
                cell.nomeCategoria.text = "Salário"
                cell.valorCategoria.text = "5.000,00"
                
                return cell
            } else if indexPath.row == 6 {
                let cell = table.dequeueReusableCell(withIdentifier: "CategoriasGastosTableViewCell") as! CategoriasGastosTableViewCell
                
                cell.imageCategoria.image = #imageLiteral(resourceName: "cashflow")
                cell.nomeCategoria.text = "Transferência"
                cell.valorCategoria.text = "1.000,00"
                
                return cell
            } else if indexPath.row == 7 {
                let cell = table.dequeueReusableCell(withIdentifier: "CategoriasGastosTableViewCell") as! CategoriasGastosTableViewCell
                
                cell.imageCategoria.image = #imageLiteral(resourceName: "expensive")
                cell.nomeCategoria.text = "Depósitos"
                cell.valorCategoria.text = "0,00"
                
                return cell
            } else if indexPath.row == 8 {
                let cell = table.dequeueReusableCell(withIdentifier: "CategoriasGastosTableViewCell") as! CategoriasGastosTableViewCell
                
                cell.imageCategoria.image = #imageLiteral(resourceName: "money_bag")
                cell.nomeCategoria.text = "Rebimento Total"
                cell.valorCategoria.text = "6.000,00"
                
                return cell
            }
            else if indexPath.row == 9 {
                let cell = table.dequeueReusableCell(withIdentifier: "FicouComDuvidasTableViewCell") as! FicouComDuvidasTableViewCell
                
                cell.avatar.image = #imageLiteral(resourceName: "avatar_feminino")
                cell.title.text = "Ficou com dúvidas?"
                cell.txt.text = "Converse por chat com um de nossos gerente, que estão a disposição para orientá-lo financeiramente"
                
                let myColor = UIColor.white
                cell.btnFaleComGente.layer.cornerRadius = 5
                cell.btnFaleComGente.layer.borderWidth = 1
                cell.btnFaleComGente.layer.borderColor = myColor.cgColor
                
                return cell
            }else if indexPath.row == 10 {
                
                let cell = table.dequeueReusableCell(withIdentifier: "HeadObjetivosTableViewCell") as! HeadObjetivosTableViewCell
                
                cell.btnMesAberto.layer.cornerRadius = 5
                return cell
                
                
            }else if indexPath.row == 11 {
                let cell = table.dequeueReusableCell(withIdentifier: "GraficoObjetivosTableViewCell") as! GraficoObjetivosTableViewCell
                
                let meta = "Meta: Quero gastar R$ "
                cell.txtLabel.text = meta+"2.000,00"
                
                return cell
            } else if indexPath.row == 12 {
                let cell = table.dequeueReusableCell(withIdentifier: "HistoricoAcompTableViewCell") as! HistoricoAcompTableViewCell
                
                
                cell.dataDoMes.text = "De 01/05 a 31/05"
                cell.dataMesAnterior.text = "De 01/04 a 30/04"
                
                cell.vlDoMes.text = "1.700,00"
                cell.vlMesAnterior.text = "3.456,98"
                return cell
                
            }else{
                let cell = table.dequeueReusableCell(withIdentifier: "CustomizarTableViewCell") as! CustomizarTableViewCell
                
               // R: 90 G: 193 B: 204
                let myColor : UIColor = UIColor( red: 90.0, green: 193.0, blue:204.0, alpha:  10.0)

                cell.btncustomizar.layer.cornerRadius = 5
                cell.btncustomizar.layer.borderWidth = 1
                cell.btncustomizar.layer.borderColor = myColor.cgColor
                return cell
        }
    }
    
}
