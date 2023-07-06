//
//  Racer.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 06.07.2023.
//

import Foundation
import UIKit

class Racer: NSObject {
    var position: String
    var country: UIImage
    var name: String
    var points: String
    

    init(position: String, country: UIImage, name: String, points: String) {
        self.position = position
        self.country = country
        self.name = name
        self.points = points
    }
    
    
}
