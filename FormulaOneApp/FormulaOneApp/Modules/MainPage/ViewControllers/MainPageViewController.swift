//
//  MainPageViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 06.07.2023.
//

import UIKit

class MainPageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let racerModel = RacerModel()
    
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultTableView.dataSource = self
        resultTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        racerModel.racers[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        racerModel.racers.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Чемпионат Мира"
        }
        
        return "Кубок Конструкторов"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = resultTableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell") as! InfoTableViewCell
            
            return cell
        }
        
        let cell = resultTableView.dequeueReusableCell(withIdentifier: "RacerTableViewCell") as! RacerTableViewCell
        
        let sectionArray = racerModel.racers[indexPath.section]
        let racer = sectionArray[indexPath.row]
        
        cell.positionLabel.text = racer.position
        cell.countryImageView.image = racer.country
        cell.nameLabel.text = racer.name
        cell.pointsLabel.text = racer.points
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
}
