//
//  TitleTableViewCell.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 10.07.2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        let text = "Новости"
//
//        let attributedText = NSAttributedString(string: text, attributes: [
//            NSAttributedString.Key.strokeColor: UIColor.black, NSAttributedString.Key.strokeWidth: -1.5])
//
//        titleLabel.attributedText = attributedText
        titleLabel.text = "Новости"
        titleLabel.textColor = UIColor(red: 0.9, green: 0.18, blue: 0.18, alpha: 1)
        titleLabel.font = UIFont(name: "Impact", size: 35)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
