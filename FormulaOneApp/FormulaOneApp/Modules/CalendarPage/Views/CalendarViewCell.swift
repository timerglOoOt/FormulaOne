//
//  CalendarViewCell.swift
//  FormulaOneApp
//
//  Created by Язгуль Хасаншина on 05.07.2023.
//

import Foundation
import UIKit

struct ListTableViewData {
    let date: String
    let country: String
    let track: String
    let length: String
    let round: String
    let distance: String
//    let image: UIImage
}

final class CalendarViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var trackLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        dateLabel.text = nil
        countryLabel.text = nil
        trackLabel.text = nil
    }
    
    func setUp(_ data: ListTableViewData) {
        dateLabel.text = data.date
        countryLabel.text = data.country
        trackLabel.text = data.track
    }
    
}
