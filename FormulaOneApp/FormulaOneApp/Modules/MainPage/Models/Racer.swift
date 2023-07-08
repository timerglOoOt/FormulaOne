//
//  Racer.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 06.07.2023.
//

import Foundation
import UIKit

class Racer: NSObject {
    let position: String
    let country: UIImage
    let name: String
    let points: String
    

    init(position: String, country: UIImage, name: String, points: String) {
        self.position = position
        self.country = country
        self.name = name
        self.points = points
    }
    
    
}


class RacerInfo: Racer {
    
    let racerImage: String
    let racerInfo: String
    
    init(position: String, country: UIImage, name: String, points: String, racerInfo: String, racerImage: String) {
        
        self.racerInfo = racerInfo
        self.racerImage = racerImage
        super.init(position: position, country: country, name: name, points: points)
        
    }
}
