//
//  ViewController.swift
//  FormulaOne
//
//  Created by Ильмир Шарафутдинов on 05/07/2023.
//  Copyright © 2023 Ильмир Шарафутдинов. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var gitOutlet: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ilmirLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var yazgulLabel: UILabel!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var timurLabel: UILabel!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var ilmirImageView: UIImageView!
    @IBOutlet weak var yazgulImageView: UIImageView!
    @IBOutlet weak var timurImageView: UIImageView!
    let name1: String = "Шарафутдинов Ильмир"
    let name2: String = "Хасаншина Язгуль"
    let name3: String = "Хайруллин Тимур"
    
    let imageName1: String = "Ilmir"
    let imageName2: String = "Yazgul"
    let imageName3: String = "Timur"
    
    let linkOfGit1: String = "https://github.com/bkmvbh"
    let linkOfGit2: String = "https://github.com/yazzgul"
    let linkOfGit3: String = "https://github.com/timerglOoOt"
    
    var linkOfVk1: String = "https://vk.com/feed"
    var linkOfVk2: String = "https://vk.com/yazgulkh"
    var linkOfVk3: String = "https://vk.com/idtimur17"
    
    var linkOfTelega1: String = "https://t.me/b_o_o_m_b_a_s_t_i_c_s"
    var linkOfTelega2: String = "https://t.me/yazgulkh"
    var linkOfTelega3: String = "https://t.me/khairullin_t"
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.layer.cornerRadius = 25
        titleLabel.clipsToBounds = true
        gitOutlet.layer.cornerRadius = 25
        gitOutlet.clipsToBounds = true
        ilmirImageView.layer.cornerRadius = ilmirImageView.frame.height / 2
        yazgulImageView.layer.cornerRadius = yazgulImageView.frame.height / 2
        timurImageView.layer.cornerRadius = timurImageView.frame.height / 2
    }

    
    @IBAction func firstButtonAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailvc") as! ModalViewController
        vc.name = name1
        vc.imageName = imageName1
        vc.linkOfGit = linkOfGit1
        vc.linkOfVk = linkOfVk1
        vc.linkOfTelega = linkOfTelega1
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func secondButtonAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailvc") as! ModalViewController
        vc.name = name2
        vc.imageName = imageName2
        vc.linkOfGit = linkOfGit2
        vc.linkOfVk = linkOfVk2
        vc.linkOfTelega = linkOfTelega2
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func thirdButtonAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailvc") as! ModalViewController
        vc.name = name3
        vc.imageName = imageName3
        vc.linkOfGit = linkOfGit3
        vc.linkOfVk = linkOfVk3
        vc.linkOfTelega = linkOfTelega3
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func linkToGitAction(_ sender: Any) {
        if let url = URL(string: "https://github.com/timerglOoOt/FormulaOne.git") {
            UIApplication.shared.open(url)
        }
    }
}

