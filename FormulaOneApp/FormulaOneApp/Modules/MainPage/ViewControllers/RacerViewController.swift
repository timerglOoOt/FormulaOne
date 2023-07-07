//
//  RacerViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 07.07.2023.
//

import UIKit

class RacerViewController: UIViewController {
    
    var racer: Racer!
    
    @IBOutlet weak var racerImageView: UIImageView!
    @IBOutlet weak var racerInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = racer.name
        racerImageView.image = racer.country
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.tintColor = .black
        
    }
}
