//
//  RacerViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 07.07.2023.
//

import UIKit

class RacerViewController: UIViewController {
    
    var racer: RacerInfo!
    
    @IBOutlet weak var racerImageView: UIImageView!
    @IBOutlet weak var racerInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let string = racer.name
        let index = string.firstIndex(of: "(") ?? string.endIndex
        let str = string[..<index]
        

        title = String(str)
        racerImageView.image = UIImage(named: racer.racerImage)
        racerImageView.layer.cornerRadius = 10
//        racerImageView.layer.borderColor = UIColor.red.cgColor
        racerInfoLabel.text = racer.racerInfo
//        racerImageView.layer.borderWidth = 5

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.tintColor = .black
        
    }
}
