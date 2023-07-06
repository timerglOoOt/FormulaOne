//
//  RacerModel.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 06.07.2023.
//

import Foundation
import UIKit


class RacerModel {
    
    var racers = [[Racer]] ()
    
    init() {
        setUp()
    }
    
    func setUp() {
        
        //Создаем объекты класса Racer для личного зачета
        
        let racer1 = Racer(position: "1.", country: UIImage(named: Countries.Netherlands)!, name: "Макс Ферстаппен (RED)", points: "229")
        let racer2 = Racer(position: "2.", country: UIImage(named: Countries.Mexico)!, name: "Серхио Перес (RED)", points: "148")
        let racer3 = Racer(position: "3.", country: UIImage(named: Countries.Spain)!, name: "Фернандо Алонсо (AST)", points: "131")
        let racer4 = Racer(position: "4.", country: UIImage(named: Countries.Britain)!, name: "Льюис Хэмилтон (MER)", points: "106")
        let racer5 = Racer(position: "5.", country: UIImage(named: Countries.Spain)!, name: "Карлос Сайнс-младший (FER)", points: "82")
        let racer7 = Racer(position: "7.", country: UIImage(named: Countries.Britain)!, name: "Джордж Расселл (MER)", points: "72")
        let racer6 = Racer(position: "6.", country: UIImage(named: Countries.Monaco)!, name: "Шарль Леклер (FER)", points: "72")
        let racer8 = Racer(position: "8.", country: UIImage(named: Countries.Canada)!, name: "Лэнс Стролл (AST)", points: "44")
        let racer9 = Racer(position: "9.", country: UIImage(named: Countries.France)!, name: "Эстебан Окон (ALP)", points: "31")
        let racer11 = Racer(position: "11.", country: UIImage(named: Countries.France)!, name: "Пьер Гасли (ALP)", points: "16")
        let racer10 = Racer(position: "10.", country: UIImage(named: Countries.Britain)!, name: "Ландо Норрис (MCL)", points: "24")
        let racer12 = Racer(position: "12.", country: UIImage(named: Countries.Germany)!, name: "Нико Хюлькенберг (HAA)", points: "9")
        let racer13 = Racer(position: "13.", country: UIImage(named: Countries.Thailand)!, name: "Александр Элбон (WIL)", points: "7")
        let racer14 = Racer(position: "14.", country: UIImage(named: Countries.Australia)!, name: "Оскар Пиастри (MCL)", points: "5")
        let racer15 = Racer(position: "15.", country: UIImage(named: Countries.Finland)!, name: "Валттери Боттас (ALF)", points: "5")
        let racer16 = Racer(position: "16.", country: UIImage(named: Countries.China)!, name: "Гуаньюй Чжоу (ALF)", points: "4")
        let racer17 = Racer(position: "17.", country: UIImage(named: Countries.Japan)!, name: "Юки Цунода (ALT)", points: "2")
        let racer18 = Racer(position: "18.", country: UIImage(named: Countries.Netherlands)!, name: "Кевин Магнуссен (HAA)", points: "2")
        let racer19 = Racer(position: "19.", country: UIImage(named: Countries.Netherlands)!, name: "Ник де Врис (ALT)", points: "0")
        let racer20 = Racer(position: "20.", country: UIImage(named: Countries.USA)!, name: "Логан Сарджент (WIL)", points: "0")
        
        //Добавляем гонщиков в секцию гонщиков
        
        var racerArray = [Racer]()
        
        racerArray.append(racer1)
        racerArray.append(racer2)
        racerArray.append(racer3)
        racerArray.append(racer4)
        racerArray.append(racer5)
        racerArray.append(racer6)
        racerArray.append(racer7)
        racerArray.append(racer8)
        racerArray.append(racer9)
        racerArray.append(racer10)
        racerArray.append(racer11)
        racerArray.append(racer12)
        racerArray.append(racer13)
        racerArray.append(racer14)
        racerArray.append(racer15)
        racerArray.append(racer16)
        racerArray.append(racer17)
        racerArray.append(racer18)
        racerArray.append(racer19)
        racerArray.append(racer20)
        
        //Создаем объекты Racer для командного зачета
        
        let team1 = Racer(position: "1.", country: UIImage(named: Countries.Austria)!, name: "Ред Булл", points: "377")
        let team2 = Racer(position: "2.", country: UIImage(named: Countries.Germany)!, name: "Мерседес", points: "178")
        let team3 = Racer(position: "3.", country: UIImage(named: Countries.Britain)!, name: "Астон Мартин", points: "175")
        let team4 = Racer(position: "4.", country: UIImage(named: Countries.Italy)!, name: "Феррари", points: "154")
        let team5 = Racer(position: "5.", country: UIImage(named: Countries.France)!, name: "Альпин", points: "47")
        let team6 = Racer(position: "6.", country: UIImage(named: Countries.Britain)!, name: "Альпин", points: "29")
        let team7 = Racer(position: "7.", country: UIImage(named: Countries.USA)!, name: "Хаас", points: "11")
        let team8 = Racer(position: "8.", country: UIImage(named: Countries.Switzerland)!, name: "Альфа Ромео", points: "9")
        let team9 = Racer(position: "9.", country: UIImage(named: Countries.Britain)!, name: "Уильямс", points: "7")
        let team10 = Racer(position: "10.", country: UIImage(named: Countries.Italy)!, name: "АльфаТаури", points: "2")
        
        // Добавляем команды
        
        var teamArray = [Racer] ()
        
        teamArray.append(team1)
        teamArray.append(team2)
        teamArray.append(team3)
        teamArray.append(team4)
        teamArray.append(team5)
        teamArray.append(team6)
        teamArray.append(team7)
        teamArray.append(team8)
        teamArray.append(team9)
        teamArray.append(team10)
        
        racers.append(racerArray)
        racers.append(teamArray)
    }
}
