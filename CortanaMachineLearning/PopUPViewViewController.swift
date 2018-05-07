//
//  PopUPViewViewController.swift
//  CortanaMachineLearning
//
//  Created by João Paulo  Tieles on 07/05/2018.
//  Copyright © 2018 João Paulo  Tieles. All rights reserved.
//

import UIKit

class PopUPViewViewController: UIViewController {
    
    @IBOutlet weak var popUp: UIView!
    
    @IBOutlet weak var buttonSim: UIButton!
    @IBOutlet weak var buttonNao: UIButton!
    @IBOutlet weak var txtViewMsg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtViewMsg.isEditable = false
        popUp.layer.cornerRadius = 5
        buttonNao.layer.cornerRadius = 5
        buttonSim.layer.cornerRadius = 5
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
    }
    
    @IBAction func btnAceitar(_ sender: UIButton) {
        // post msg in Data Base
    }
    
    @IBAction func closeOnBtn(_ sender: AnyObject) {
        self.removeAnimate()
    }
    
    @IBAction func closePopOnX(_ sender:            AnyObject) {
       self.removeAnimate()
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
}
