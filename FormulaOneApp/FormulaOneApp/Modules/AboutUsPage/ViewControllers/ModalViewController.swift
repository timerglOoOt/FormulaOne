//
//  ModalViewController.swift
//  FormulaOne
//
//  Created by Ильмир Шарафутдинов on 06/07/2023.
//  Copyright © 2023 Ильмир Шарафутдинов. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    
    var name: String = ""
    var imageName: String = ""
    var linkOfGit: String = ""
    var linkOfVk: String = ""
    var linkOfTelega: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setData()
        personImage.layer.cornerRadius = personImage.frame.height / 2
    }
    

    func setData() {
        personName.text = name
        personImage.image = UIImage(named: imageName)
    }
    
    @IBAction func dismissButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func linkOfGitAction(_ sender: Any) {
        if let url = URL(string: linkOfGit) {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func linkOfVkAction(_ sender: Any) {
        if let url = URL(string: linkOfVk) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func linkOfTelegaAction(_ sender: Any) {
        if let url = URL(string: linkOfTelega) {
            UIApplication.shared.open(url)
        }
    }
}
