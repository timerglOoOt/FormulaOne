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
        
        let racer1 = RacerInfo(position: "1.", country: UIImage(named: Countries.Netherlands)!, name: "Макс Ферстаппен (RED)", points: "229", racerInfo: """
Born: 30/09/1997, Hasselt (Belgium)

Now a two-time World Champion, Max Verstappen’s meteoric rise to the pinnacle of Formula 1 has seen the Dutchman smash numerous records and break new ground en route to becoming today’s most dominant force.

Son of former F1 driver Jos Verstappen (Benetton, Simtek, Arrows Stewart, Tyrrell, Minardi), Max received his 2015 F1 debut with Scuderia Toro Rosso for what was remarkably only his second full season of single-seater racing.
""", racerImage: RacerImage.ver)
        let racer2 = RacerInfo(position: "2.", country: UIImage(named: Countries.Mexico)!, name: "Серхио Перес (RED)", points: "148", racerInfo: """
Born: 26/01/1990, Guadalajara, Mexico

A stalwart of the Formula 1 grid, Sergio ‘Checo’ Perez has bucked the trend of most drivers before him by achieving his greatest successes in the series more than a decade on from his debut.

Cultivating a reputation as a trusted hand capable of headline-grabbing performances in lesser fancied machinery on his day, while it took a record-breaking 190 grands prix for him to taste the winners’ champagne, a chance opportunity to join Red Bull Racing has seen him bloom into a regular podium winner.
""", racerImage: RacerImage.per)
        let racer3 = RacerInfo(position: "3.", country: UIImage(named: Countries.Spain)!, name: "Фернандо Алонсо (AST)", points: "131", racerInfo: """
Born: 29/07/1981, Oviedo, Spain

Regarded as one of the greatest drivers of all-time, two-time Formula 1 world champion Fernando Alonso’s career spans three decades at the top level.

A driver idolised by fans for his skills behind the wheel, coveted by teams for his sheer experience yet at times divisive in the paddock for his outspoken attitude, Alonso has carved himself a reputation both on and off-track as one of F1’s enduring legends.
""", racerImage: RacerImage.alo)
        let racer4 = RacerInfo(position: "4.", country: UIImage(named: Countries.Britain)!, name: "Льюис Хэмилтон (MER)", points: "106", racerInfo: """
Born: 07/01/1985, Stevenage, UK

Statistically the most successful Formula 1 driver of all-time, it is a benchmark status the seven-time world champion Lewis Hamilton will be looking to build on to cement his legacy in the series.

The first – and to date only – black driver to compete in F1, Hamilton’s record-breaking success on the track makes him one of the world’s best-known and highest-paid sportsmen.
""", racerImage: RacerImage.ham)
        let racer5 = RacerInfo(position: "5.", country: UIImage(named: Countries.Spain)!, name: "Карлос Сайнс-младший (FER)", points: "82", racerInfo: """
Born: 01/09/1994, Madrid, Spain

Born into one of Spain’s most famous racing dynasties as the son and namesake of Carlos Sainz – a two-time World Rally Champion – it was perhaps inevitable Sainz Jr would follow in his father’s footsteps by pursuing a career in motorsport.

Inspired by the success of countryman – and future F1 rival – Fernando Alonso, Sainz opted against a career in rallying in favour of pursuing success in single-seaters, quickly gaining recognition beyond his revered name with a series of accolades in karting and junior formula.
""", racerImage: RacerImage.sai)
        let racer7 = RacerInfo(position: "7.", country: UIImage(named: Countries.Britain)!, name: "Джордж Расселл (MER)", points: "72", racerInfo: """
Born: 15/02/1998, King’s Lynn, UK

Strongly regarded as the most likely candidate to succeed fellow countryman Lewis Hamilton as Britain’s next F1 world champion with the Mercedes AMG Petronas F1 Team.

The Norfolk driver enjoyed a swift and successful rise through the junior ranks en route to making his F1 debut in 2019, where three character-building seasons with Williams Racing won widespread acclaim despite his uncompetitive package.
""", racerImage: RacerImage.rus)
        let racer6 = RacerInfo(position: "6.", country: UIImage(named: Countries.Monaco)!, name: "Шарль Леклер (FER)", points: "72", racerInfo: """
Born: 16/10/1997, Monaco

Few drivers reach Formula 1 on a wave of anticipation as sizable as Charles Leclerc’s but the Monegasque has consistently delivered on those high expectations.

Born in the heart of grand prix racing’s most iconic crown jewel of Monaco, Leclerc enjoyed the benefit of growing up immersed amid decades of F1 heritage within a family itself rich in motorsport heritage too.
""", racerImage: RacerImage.lec)
        let racer8 = RacerInfo(position: "8.", country: UIImage(named: Countries.Canada)!, name: "Лэнс Стролл (AST)", points: "44", racerInfo: """
Born: 29/10/1998, Montreal, Canada

From one of the youngest drivers to start an F1 race to being one of the longer-serving racers on the current grid, Lance Stroll is set for a lengthy career at the top level with Aston Martin Racing.

While his on-track efforts in that time have on occasion been overshadowed by the roving business interests of his father – Aston Martin Racing Chairman, Lawrence Stroll – the Canadian has been able to rise above scrutiny in the years since his much discussed F1 debut.
""", racerImage: RacerImage.str)
        let racer9 = RacerInfo(position: "9.", country: UIImage(named: Countries.France)!, name: "Эстебан Окон (ALP)", points: "31", racerInfo: """
Born: 17/09/1996, Evreux, France

Esteban Ocon, one half of the all-French driver line-up for French team Alpine in 2023, hasn’t had an easy time in Formula 1.

Having caught the eye with his impressive rise through the junior ranks, Ocon is one of F1’s more recent new race winners following his shock success in the 2021 Hungarian Grand Prix.
""", racerImage: RacerImage.oco)
        let racer11 = RacerInfo(position: "11.", country: UIImage(named: Countries.France)!, name: "Пьер Гасли (ALP)", points: "16", racerInfo: """
Born: 7/2/1996, Rouen, France

Pierre Gasly’s 2023 F1 season with BWT Alpine F1 Team is his first in the series outside of the Red Bull fold.

Born in the city of Rouen – home to the French Grand Prix for a time during the 1950s and 1960s – Gasly had more than just motorsport heritage on his doorstep to inspire his career path.
""", racerImage: RacerImage.gas)
        let racer10 = RacerInfo(position: "10.", country: UIImage(named: Countries.Britain)!, name: "Ландо Норрис (MCL)", points: "24", racerInfo: """
Born: 13/11/1999, Bristol, UK

A firm favourite among F1 fans, Norris has earned a loyal following with his witty approach to media engagements, his active interactions on social media and regular appearances on gaming streams.

But it is on track where Norris has successfully built on the great promise shown through the junior ranks to emerge as one of the most exciting propositions among F1’s ‘new generation’ of racers.
""", racerImage: RacerImage.nor)
        let racer12 = RacerInfo(position: "12.", country: UIImage(named: Countries.Germany)!, name: "Нико Хюлькенберг (HAA)", points: "9", racerInfo: """
Born: 10/08/1987, Emmerich am Rhein, Germany

Nico Hulkenberg returned to the 2023 Formula 1 grid with the Haas F1 Team for his first full season in the sport since 2019.

One of the more ubiquitous drivers on the F1 grid, even with the three-season hiatus from the sport, Hulkenberg is one of the most experienced too, having made his debut way back in 2010.
""", racerImage: RacerImage.hul)
        let racer13 = RacerInfo(position: "13.", country: UIImage(named: Countries.Thailand)!, name: "Александр Элбон (WIL)", points: "7", racerInfo: """
Born: 23/03/1996, London, UK

It’s been a rollercoaster ride for Alex Albon since his Formula 1 debut with Scuderia Toro Rosso in 2019.

A tenure headlined initially by his promotion-turned-relegation within the Red Bull ranks ­– ultimately leading to a stint on the F1 sidelines altogether in 2021 – a series of eye-catching performances on Albon’s return to the top-flight with Williams in 2022 would go a long way to reaffirm his credentials.
""", racerImage: RacerImage.alb)
        let racer14 = RacerInfo(position: "14.", country: UIImage(named: Countries.Australia)!, name: "Оскар Пиастри (MCL)", points: "5", racerInfo: """
Born: 06/04/2001, Melbourne, Australia

Oscar Piastri’s decorated – albeit convoluted – route to the premier ranks has certainly attracted more headlines than the average Formula 1 debutant.

Following in the footsteps of Lewis Hamilton, Kevin Magnussen and Lando Norris by making his F1 debut with McLaren, the buildup to Piastri’s much anticipated premiere was both belated and been fraught with controversy.
""", racerImage: RacerImage.pia)
        let racer15 = RacerInfo(position: "15.", country: UIImage(named: Countries.Finland)!, name: "Валттери Боттас (ALF)", points: "5", racerInfo: """
Born: 28/08/1989, Nastola, Finland

The latest in a long line of Finns to have tasted the winners’ champagne in motorsport’s highest echelons, Valtteri Bottas is in his second season with Alfa Romeo F1 Team Stake for the 2023 F1 World Championship.

A soaring rise through the junior ranks labelled him as a future star, Bottas accumulating Formula Renault titles in both the UK and in Europe, before landing third overall in the competitive Formula 3 Euroseries in his rookie campaign.
""", racerImage: RacerImage.bot)
        let racer16 = RacerInfo(position: "16.", country: UIImage(named: Countries.China)!, name: "Гуаньюй Чжоу (ALF)", points: "4", racerInfo: """
Born: 26/01/1999, Shanghai, China

Zhou Guanyu’s Formula 1 debut in 2022 marked the series’ long-sought fulfilment to get a Chinese driver onto the F1 grid.

Earning his opportunity with the Alfa Romeo F1 Team, Zhou complemented the historic honour by scoring on his debut in Bahrain and going on to prove a worthy understudy to experienced team-mate Valtteri Bottas come the end of his rookie campaign.
""", racerImage: RacerImage.zho)
        let racer17 = RacerInfo(position: "17.", country: UIImage(named: Countries.Japan)!, name: "Юки Цунода (ALT)", points: "2", racerInfo: """
Born: 11/05/2000, Sagamihara, Japan

The latest in a long line of Japanese drivers to reach F1, Yuki Tsunoda earned a stay of execution with AlphaTauri for a third season in 2023.

Climbing the junior ranks championed by the combined support of both Honda’s Dream Project young driver programme and Red Bull, Tsunoda’s F1 opportunity came after just two seasons competing outside of his native Japan.
""", racerImage: RacerImage.tsu)
        let racer18 = RacerInfo(position: "18.", country: UIImage(named: Countries.Denmark)!, name: "Кевин Магнуссен (HAA)", points: "2", racerInfo: """
Born: 5/10/1992, Roskilde, Denmark

Forming one half of the Haas F1 Team’s ‘Comeback Kings’ driver line-up alongside Nico Hulkenberg for the 2023 season, Kevin Magnussen elongated his F1 career following his eleventh-hour return in 2022.

A driver that has now twice returned to F1 after a year out – his first enforced sabbatical coming in 2015 and the second in 2021 – Magnussen is aiming to stay around for longer this time.
""", racerImage: RacerImage.mag)
        let racer19 = RacerInfo(position: "19.", country: UIImage(named: Countries.Netherlands)!, name: "Ник де Врис (ALT)", points: "0", racerInfo: """
Born: 06/02/1995, Uitwellingerga, Netherlands

A fine example of what is possible when a chance opportunity is grasped with both hands, Nyck de Vries scored points in his stand-in performance for Williams at Monza last season, which led directly to his first full Formula 1 season in 2023 with AlphaTauri.

While those in the know had never doubted the credentials of de Vries – a title winner in Formula 2 and Formula E in 2019 and 2020-21 respectively – it took a last minute call up to replace appendicitis-stricken Alex Albon at Williams for the 2022 Italian Grand Prix.
""", racerImage: RacerImage.vri)
        let racer20 = RacerInfo(position: "20.", country: UIImage(named: Countries.USA)!, name: "Логан Сарджент (WIL)", points: "0", racerInfo: """
Born: 31/12/2000, Fort Lauderdale, USA

One of three rookies who made their Formula 1 debut in 2023, Logan Sargeant lined up with the Williams Racing team.

The latest in an acclaimed lineage of drivers to have earned an F1 race seat with the storied British team via its driver development programme, Sargeant replaced Nicholas Latifi and was paired with Alex Albon in Williams’ revised line-up.
""", racerImage: RacerImage.sar)
        
        //Добавляем гонщиков в секцию гонщиков
        
        var racerArray = [Racer]()
        
        racerArray.append(Racer(position: "", country: UIImage(named: Countries.Austria)!, name: "", points: ""))
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
        
        teamArray.append(Racer(position: "", country: UIImage(named: Countries.Austria)!, name: "", points: ""))
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
