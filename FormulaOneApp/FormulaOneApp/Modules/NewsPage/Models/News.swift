//
//  News.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 10.07.2023.
//

import Foundation
import UIKit

struct News {
    
    let image: String
    let title: String
    let info: String
    let link: String
    
    init(image: String, title: String, info: String, link: String) {
        
        self.image = image
        self.title = title
        self.info = info
        self.link = link
    }
    
}
