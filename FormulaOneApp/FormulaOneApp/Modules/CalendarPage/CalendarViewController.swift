//
//  CalendarViewController.swift
//  FormulaOneApp
//
//  Created by Язгуль Хасаншина on 05.07.2023.
//

import Foundation
import UIKit

final class CalendarViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
//    жесткий хардкод
    
    private let data: [ListTableViewData] = [
//        ListTableViewData(date: "06/07", country: "Абу-Даби", track: "Яс-Марина"),
        ListTableViewData(date: "26/11", country: "Абу-Даби", track: "Яс-Марина"),
        ListTableViewData(date: "18/11", country: "Лас-вегас", track: "Лас-Вегас"),
        ListTableViewData(date: "05/11", country: "Сан-Паулу", track: "Сан-Паулу"),
        ListTableViewData(date: "29/10", country: "Мехико", track: "Мехико"),
        ListTableViewData(date: "22/10", country: "США", track: "Остин"),
        ListTableViewData(date: "08/10", country: "Катар", track: "Лосаил"),
        ListTableViewData(date: "24/09", country: "Япония", track: "Сузука"),
        ListTableViewData(date: "17/09", country: "Сингапур", track: "Марина-Бэй"),
        ListTableViewData(date: "03/09", country: "Италия", track: "Монца"),
        ListTableViewData(date: "27/08", country: "Нидерланды", track: "Зандфорт"),
        ListTableViewData(date: "30/07", country: "Бельгия", track: "Спа"),
        ListTableViewData(date: "23/07", country: "Венгрия", track: "Хунгароринг"),
        ListTableViewData(date: "09/07", country: "Великобритания", track: "Сильверстоун"),
        ListTableViewData(date: "02/07", country: "Австрия", track: "Шпильберг"),
        ListTableViewData(date: "18/06", country: "Канада", track: "Монреаль"),
        ListTableViewData(date: "04/06", country: "Испания", track: "Барселона"),
        ListTableViewData(date: "28/05", country: "Монако", track: "Монако"),
        ListTableViewData(date: "07/05", country: "Майами", track: "Майами"),
        ListTableViewData(date: "30/04", country: "Азербайджан", track: "Баку"),
        ListTableViewData(date: "02/04", country: "Австралия", track: "Мельбурн"),
        ListTableViewData(date: "19/03", country: "Саудовская Аравия", track: "Джидда"),
        ListTableViewData(date: "05/03", country: "Бахрейн", track: "Сахир")
    ]
    
    private var pastEvents: [ListTableViewData] = []
    private var currentEvents: [ListTableViewData] = []
    private var futureEvents: [ListTableViewData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        separateEventsByDate()
    }
    
    private func separateEventsByDate() {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM"
        
        for event in data {
            
            if let dateFromString = dateFormatter.date(from: event.date) {
                
                let calendar = Calendar.current
                
                let currentYear = calendar.component(.year, from: currentDate)
                let compareComponents = calendar.dateComponents([.day, .month], from: dateFromString)
                
                if let day = compareComponents.day, let month = compareComponents.month {
                    var normalizedComponents = DateComponents()
                    normalizedComponents.year = currentYear
                    normalizedComponents.month = month
                    normalizedComponents.day = day
                    normalizedComponents.hour = 0
                    normalizedComponents.minute = 0
                    normalizedComponents.second = 0
                    
                    if let normalizedDate = calendar.date(from: normalizedComponents) {
                        let normalizedCurrentDate = calendar.date(bySettingHour: 0, minute: 0, second: 0, of: currentDate) ?? currentDate
                        
                        let comparisonResult = normalizedCurrentDate.compare(normalizedDate)
                        
                        if comparisonResult == .orderedAscending {
                            futureEvents.append(event)
                        } else if comparisonResult == .orderedDescending {
                            pastEvents.append(event)
                        } else {
                            currentEvents.append(event)
                        }
                    }
                }
            }
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return currentEvents.count
        } else if section == 1 {
            return futureEvents.count
        } else {
            return pastEvents.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Текущие события"
        } else if section == 1 {
            return "Предстоящие события"
        } else {
            return "Прошедшие события"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CalendarViewCell") as? CalendarViewCell else { return UITableViewCell() }
        if indexPath.section == 0 {
            if indexPath.row < currentEvents.count {
                cell.setUp(currentEvents[indexPath.row])
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row < futureEvents.count {
                cell.setUp(futureEvents[indexPath.row])
                return cell
            }
        }
        if indexPath.section == 2 {
            if indexPath.row < pastEvents.count {
                cell.setUp(pastEvents[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
}
