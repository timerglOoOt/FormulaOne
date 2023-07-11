//
//  infoTableViewCell.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 08.07.2023.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        positionLabel.text = "#"
        pointsLabel.text = "Очки"
        positionLabel.textColor = .white
        pointsLabel.textColor = .white
        self.backgroundColor = UIColor(cgColor: CGColor(red: 0.96, green: 0.18, blue: 0.18, alpha: 1))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
