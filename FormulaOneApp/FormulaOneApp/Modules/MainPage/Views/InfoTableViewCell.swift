//
//  InfoTableViewCell.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 07.07.2023.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        positionLabel.text = "#"
        pointsLabel.text = "Очки"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
