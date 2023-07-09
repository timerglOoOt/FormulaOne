//
//  MainPageViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 06.07.2023.
//

import UIKit

class MainPageViewController: UIViewController {

    let racerModel = RacerModel()
    
    @IBOutlet weak var resultTableView: UITableView!
    
    // MARK: Life cycle
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       setupTableView()
    }
    
    private func setupTableView() {
        resultTableView.dataSource = self
        resultTableView.delegate = self
        
        resultTableView.register(UINib(nibName: "InfoCell", bundle: nil), forCellReuseIdentifier: "InfoTableViewCell")
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension MainPageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = resultTableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell") as! InfoTableViewCell
            
//            cell.awakeFromNib()
            cell.selectionStyle = .none
            
//            print(cell.pointsLabel)

//            cell.backgroundColor = UIColor.lightGray
            
            return cell
        }
        
        let cell = resultTableView.dequeueReusableCell(withIdentifier: "RacerTableViewCell") as! RacerTableViewCell
        
        let sectionArray = racerModel.racers[indexPath.section]
        let racer = sectionArray[indexPath.row]
        
        cell.positionLabel.text = String(indexPath.row) + "."
        cell.countryImageView.image = racer.country
        cell.nameLabel.text = racer.name
        cell.pointsLabel.text = String(racer.points)
        
        cell.selectionStyle = .none
        return cell
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 20
        }
        
        return 43.5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let racerViewController = storyboard?.instantiateViewController(withIdentifier: "RacerViewController") as? RacerViewController else { return }
        
        let sectionArray = racerModel.racers[indexPath.section]
        let racer = sectionArray[indexPath.row]
        
        
        if indexPath.row != 0 && indexPath.section == 0 {
            racerViewController.racer = racer as! RacerInfo
            navigationController?.pushViewController(racerViewController, animated: true)
        }
    }
}
