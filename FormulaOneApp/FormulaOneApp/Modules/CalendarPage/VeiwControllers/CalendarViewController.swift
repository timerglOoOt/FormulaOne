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
        ListTableViewData(date: "26/11", country: "Абу-Даби", track: "Яс-Марина", length: "5281", round: "58", distance: "306.183"),
        ListTableViewData(date: "18/11", country: "Лас-вегас", track: "Лас-Вегас", length: "6120", round: "50", distance: "305,880"),
        ListTableViewData(date: "05/11", country: "Сан-Паулу", track: "Сан-Паулу", length: "4309", round: "71", distance: "305.879"),
        ListTableViewData(date: "29/10", country: "Мехико", track: "Мехико", length: "4304", round: "71", distance: "305.354"),
        ListTableViewData(date: "22/10", country: "США", track: "Остин", length: "5513", round: "56", distance: "308.405"),
        ListTableViewData(date: "08/10", country: "Катар", track: "Лосаил", length: "5380", round: "57", distance: "306.660"),
        ListTableViewData(date: "24/09", country: "Япония", track: "Сузука", length: "5807", round: "53", distance: "307.471"),
        ListTableViewData(date: "17/09", country: "Сингапур", track: "Марина-Бэй", length: "5063", round: "59", distance: "298,580"),
        ListTableViewData(date: "03/09", country: "Италия", track: "Монца", length: "5793", round: "53", distance: "306.720"),
        ListTableViewData(date: "27/08", country: "Нидерланды", track: "Зандфорт", length: "4259", round: "72", distance: "306.587"),
        ListTableViewData(date: "30/07", country: "Бельгия", track: "Спа", length: "7004", round: "44", distance: "308.052"),
        ListTableViewData(date: "23/07", country: "Венгрия", track: "Хунгароринг", length: "4381", round: "70", distance: "306.630"),
        ListTableViewData(date: "09/07", country: "Великобритания", track: "Сильверстоун", length: "5891", round: "52", distance: "306.198"),
        ListTableViewData(date: "02/07", country: "Австрия", track: "Шпильберг", length: "4318", round: "71", distance: "306.452"),
        ListTableViewData(date: "18/06", country: "Канада", track: "Монреаль", length: "4361", round: "70", distance: "305.270"),
        ListTableViewData(date: "04/06", country: "Испания", track: "Барселона", length: "4657", round: "66", distance: "307.362"),
        ListTableViewData(date: "28/05", country: "Монако", track: "Монако", length: "3337", round: "78", distance: "260.286"),
        ListTableViewData(date: "07/05", country: "Майами", track: "Майами", length: "5412", round: "57", distance: "308,326"),
        ListTableViewData(date: "30/04", country: "Азербайджан", track: "Баку", length: "6003", round: "51", distance: "306.049"),
        ListTableViewData(date: "02/04", country: "Австралия", track: "Мельбурн", length: "5278", round: "58", distance: "306,124"),
        ListTableViewData(date: "19/03", country: "Саудовская Аравия", track: "Джидда", length: "6174", round: "50", distance: "308,450"),
        ListTableViewData(date: "05/03", country: "Бахрейн", track: "Сахир", length: "5412", round: "57", distance: "308,238")
    ]
    
    private var pastEvents: [ListTableViewData] = []
    private var currentEvents: [ListTableViewData] = []
    private var futureEvents: [ListTableViewData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.white
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var country = ""
        var date = ""
        var track = ""
        var length = ""
        var round = ""
        var distance = ""
        
        if indexPath.section == 0 {
            if indexPath.row < currentEvents.count {
                country = currentEvents[indexPath.row].country
                date = currentEvents[indexPath.row].date
                track = currentEvents[indexPath.row].track
                length = currentEvents[indexPath.row].length
                round = currentEvents[indexPath.row].round
                distance = currentEvents[indexPath.row].distance
            }
        }
        else if (indexPath.section == 1) {
            if indexPath.row < futureEvents.count {
                country = futureEvents[indexPath.row].country
                date = futureEvents[indexPath.row].date
                track = futureEvents[indexPath.row].track
                length = futureEvents[indexPath.row].length
                round = futureEvents[indexPath.row].round
                distance = futureEvents[indexPath.row].distance
            }
        }
        else  {
            if indexPath.row < pastEvents.count {
                country = pastEvents[indexPath.row].country
                date = pastEvents[indexPath.row].date
                track = pastEvents[indexPath.row].track
                length = pastEvents[indexPath.row].length
                round = pastEvents[indexPath.row].round
                distance = pastEvents[indexPath.row].distance
            }
        }
        
        let messages = [ "Гран при: " + country, "Дата: " + date, "Трасса: " + track, "Длина: " + length + " м", "Круги: " + round, "Дистанция: " + distance + " км"]
        
        // создание атрибутированной строки с помощью элементов массива
        let attributedString = NSMutableAttributedString()
        let paragraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        for message in messages {
            let messageString = NSAttributedString(string: message + "\n", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle] )
            attributedString.append(messageString)
        }

        let alertController = UIAlertController(title: "Информация" + "\n", message: nil, preferredStyle: .alert)
        
        // добавление атрибутированной строки в alert
        alertController.setValue(attributedString, forKey: "attributedMessage")

        
        // создание кнопки назад и добавление ее в предупреждение
        let button = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        button.setValue(UIColor.red, forKey: "titleTextColor")
        alertController.addAction(button)
        
        present(alertController, animated: true, completion: nil)
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
                cell.dateLabel.textColor = .red
                cell.countryLabel.textColor = .red
                cell.trackLabel.textColor = .red
                cell.selectionStyle = .none
                
                return cell
            }
        }
        if indexPath.section == 1 {
            if indexPath.row < futureEvents.count {
                cell.setUp(futureEvents[indexPath.row])
                cell.dateLabel.textColor = .black
                cell.countryLabel.textColor = .black
                cell.trackLabel.textColor = .black
                cell.selectionStyle = .none
                
                return cell
            }
        }
        if indexPath.section == 2 {
            if indexPath.row < pastEvents.count {
                cell.setUp(pastEvents[indexPath.row])
                cell.dateLabel.textColor = .black
                cell.countryLabel.textColor = .black
                cell.trackLabel.textColor = .black
                cell.selectionStyle = .none
                
                return cell
            }
        }
        return UITableViewCell()
    }
}
