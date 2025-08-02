//
//  ViewController.swift
//  DoYouLoveMeGame
//
//  Created by Burak Kaymak on 1.08.2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var yesLabel: UILabel!
    @IBOutlet weak var noLabel1: UILabel!
    @IBOutlet weak var noLabel2: UILabel!
    @IBOutlet weak var noLabel3: UILabel!
    @IBOutlet weak var noLabel4: UILabel!
    @IBOutlet weak var noLabel5: UILabel!
    @IBOutlet weak var noLabel6: UILabel!
    @IBOutlet weak var noLabel7: UILabel!
    @IBOutlet weak var noLabel8: UILabel!
    @IBOutlet weak var noLabel9: UILabel!
    @IBOutlet weak var noLabel10: UILabel!
    
    var noArray = [UILabel]()
    var current : UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yesLabel.isUserInteractionEnabled = true
        noLabel1.isUserInteractionEnabled = true
        noLabel2.isUserInteractionEnabled = true
        noLabel3.isUserInteractionEnabled = true
        noLabel4.isUserInteractionEnabled = true
        noLabel5.isUserInteractionEnabled = true
        noLabel6.isUserInteractionEnabled = true
        noLabel7.isUserInteractionEnabled = true
        noLabel8.isUserInteractionEnabled = true
        noLabel9.isUserInteractionEnabled = true
        noLabel10.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(yesClicked))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(noClicked))
        
        
        yesLabel.addGestureRecognizer(recognizer1)
        noLabel1.addGestureRecognizer(recognizer2)
        noLabel2.addGestureRecognizer(recognizer3)
        noLabel3.addGestureRecognizer(recognizer4)
        noLabel4.addGestureRecognizer(recognizer5)
        noLabel5.addGestureRecognizer(recognizer6)
        noLabel6.addGestureRecognizer(recognizer7)
        noLabel7.addGestureRecognizer(recognizer8)
        noLabel8.addGestureRecognizer(recognizer9)
        noLabel9.addGestureRecognizer(recognizer10)
        noLabel10.addGestureRecognizer(recognizer11)
        
        noArray = [noLabel1,noLabel2,noLabel3,noLabel4,noLabel5,noLabel6,noLabel7,noLabel8,noLabel9,noLabel10]
        
        for noLabel in noArray {
            noLabel.isHidden = true
        }
        
        // İlk no label görünür olsun
        if let first = noArray.first
        {
            first.isHidden = false
            current = first
        }
        
        
        
    }
    
    @objc func yesClicked(){
        let alert = UIAlertController(title: "Congratulations,honey", message: "I love you so much too!", preferredStyle: UIAlertController.Style.alert)
        let endButton = UIAlertAction(title: "The End", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(endButton)
        self.present(alert, animated: true)
        
        yesLabel.isHidden = true
        current?.isHidden = true
        mainLabel.text = "Created by @burakaymak"
        
        
        
        
    }
    
    @objc func noClicked() {
            // Şu anki görünür no label'ı gizle
            current?.isHidden = true

            // Yeni rastgele no label seç
            var newLabel: UILabel?
            repeat {
                newLabel = noArray.randomElement()
            } while newLabel == current

            // Yeni label'ı göster ve güncelle
            newLabel?.isHidden = false
            current = newLabel
        }
    
    


}

