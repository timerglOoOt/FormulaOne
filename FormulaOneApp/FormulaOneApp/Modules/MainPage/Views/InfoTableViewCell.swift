//
//  InfoTableViewCell.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 07.07.2023.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var PositionLabel: UILabel!
    @IBOutlet weak var PointsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        PositionLabel.text = "#"
        PointsLabel.text = "Очки"
        self.alpha = 0.4
//        self.layer.backgroundColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
