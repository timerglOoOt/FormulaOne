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
        
        titleLabel.text = "Новости"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
