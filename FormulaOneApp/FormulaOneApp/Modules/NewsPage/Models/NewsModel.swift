//
//  NewsMode;.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 10.07.2023.
//

import Foundation
import UIKit

class NewsModel {
    
    var news = [News] ()
    
    init() {
        setUp()
    }
    
    func setUp() {
        
        let news1 = News(image: NewsImage.img1, title: "«Бедолага». Гасли и Сайнс устроили пикировку после гонки", info: "Два пилота сражались за позицию на Гран При Великобритании – и один из них остался вовсе не в восторге от действий другого", link: "https://ru.motorsport.com/f1/news/gasly-ve-sainz-roportajlar-esnasinda-surtusme-yasadi/10494248/")
        let news2 = News(image: NewsImage.img2, title: "Почему McLaren поставила своим пилотам Hard? В команде объяснили", info: "Андреа Стелла рассказал, почему тактический штаб предпочел консервативный сценарий, который едва не привел к неприятным последствиям", link: "https://ru.motorsport.com/f1/news/pochemu-mclaren-postavila-svoim-pilotam-hard-v-komande-obyasnili-/10494227/")
        let news3 = News(image: NewsImage.img3, title: "Добиться большего в Сильверстоуне Ferrari помешал ветер", info: "После финиша в конце десятки Карлос Сайнс с Шарлем Леклером объяснили, что им помешало нестабильное поведение машины", link: "https://ru.motorsport.com/f1/news/dobitsya-bolshego-v-silverstoune-ferrari-pomeshal-veter/10494180/")
        let news4 = News(image: NewsImage.img4, title: "Макс объяснил, почему так плохо стартовал в Сильверстоуне", info: "Гонщик Red Bull рассказал, что упустил лидерство на первых метрах, так как его машину буквально сорвало в дрифт из-за пробуксовки", link: "https://ru.motorsport.com/f1/news/maks-obyasnil-pochemu-tak-plokho-startoval-v-silverstoune/10494058/")
        let news5 = News(image: NewsImage.img5, title: "Пиастри использовал слова «тупо быстрее», говоря о Ферстаппене", info: "Показав в Сильверстоуне лучший в карьере четвертый результат, австралиец после финиша был даже немного расстроен тем, как для него закончилась гонка", link: "https://ru.motorsport.com/f1/news/piastri-ispolzoval-slova-tupo-bystree-govorya-o-ferstappene/10494020/")
        let news6 = News(image: NewsImage.img6, title: "Стролл обвинил Гасли в столкновении и не согласился со штрафом", info: "Гонщик Aston Martin пообещал «встретиться на парковке» с соперником из Alpine, борьба с которым привела к судейскому наказанию", link: "https://ru.motorsport.com/f1/news/stroll-obvinil-gasli-v-stolknovenii-i-ne-soglasilsya-so-shtrafom/10493981/")
        let news7 = News(image: NewsImage.img7, title: "«У них просто ракета». Скорость McLaren впечатлила Хэмилтона", info: "Семикратный чемпион мира объяснил, почему не сумел обогнать в финале домашнего Гран При Ландо Норриса", link: "https://ru.motorsport.com/f1/news/u-nikh-prosto-raketa-skorost-mclaren-vpechatlila-khemiltona/10493954/")
        let news8 = News(image: NewsImage.img8, title: "Инфографика: Гран При Великобритании круг за кругом", info: "Посмотрите, как менялись позиции пилотов по ходу гонки в Сильверстоуне", link: "https://ru.motorsport.com/f1/news/infografika-gran-pri-velikobritanii-krug-za-krugom/10493963/")
        let news9 = News(image: NewsImage.img9, title: "Норрис не понял, почему на пит-стопе ему поставили Hard", info: "Из-за консервативного выбора McLaren пилоты пришлось героически оборонять в Сильверстоуне свое второе место", link: "https://ru.motorsport.com/f1/news/norris-ne-ponyal-pochemu-na-pit-stope-emu-postavili-hard/10493925/")
        let news10 = News(image: NewsImage.img10, title: "Положение в общем зачете Формулы 1 после Гран При Великобритании", info: "Вот как выглядит положение в чемпионате пилотов и Кубке конструкторов по итогам десяти Гран При нынешнего сезона", link: "https://ru.motorsport.com/f1/news/polozhenie-v-obshchem-zachete-formuly-1-posle-gran-pri-velikobritanii-10493822/10493822/")
        let news11 = News(image: NewsImage.img11, title: "Гран При Великобритании: пять быстрых выводов", info: "Макс Ферстаппен опять победил, а Ландо Норрис принес McLaren первый в сезоне подиум, опередив на финише Льюиса Хэмилтона!", link: "https://ru.motorsport.com/f1/news/gran-pri-velikobritanii-pyat-bystrykh-vyvodov-10493867/10493867/")
        let news12 = News(image: NewsImage.img12, title: "Норрис финишировал вторым в британском Гран При. Победил вновь Макс", info: "Отличный старт даже позволил Ландо ненадолго выйти в лидеры, но гонка стала очередным подтверждением того, что спорить с Red Bull и Максом Ферстаппеном в нынешней Ф1 не под силу никому", link: "https://ru.motorsport.com/f1/news/norris-finishiroval-vtorym-v-britanskom-gran-pri-pobedil-vnov-maks/10493883/")
        let news13 = News(image: NewsImage.img13, title: "Галерея: Баттон проехал в Сильверстоуне на чемпионской машине Мэнселла", info: "Чемпион мира 2009 года провел демонстрационные заезды за рулем Williams FW14B Renault, которая принесла его соотечественники титул сильнейшего в сезоне-1992", link: "https://ru.motorsport.com/f1/news/galereya-batton-proekhal-v-silverstoune-na-chempionskoj-mashine-mensella-/10493836/")
        let news14 = News(image: NewsImage.img14, title: "«У них гараж выглядит лучше, чем у некоторых реальных команд». В Ф1 одобрили APX GP", info: "Участники чемпионата мира поделились мнением о кинопроекте Брэда Питта, с которым делят боксы в этот уик-энд", link: "https://ru.motorsport.com/f1/news/u-nikh-garazh-vyglyadit-luchshe-chem-u-nekotorykh-realnykh-komand-v-f1-odobrili-apx-gp/10493186/")
        let news15 = News(image: NewsImage.img15, title: "Одной левой. Макс признал, что проводит уик-энд с травмой руки", info: "Как оказалось, накануне Гран При Великобритании голландский гонщик Red Bull повредил правую кисть", link: "https://ru.motorsport.com/f1/news/odnoj-levoj-maks-priznal-chto-provodit-uik-end-s-travmoj-ruki/10493746/")
        let news16 = News(image: NewsImage.img16, title: "McLaren после квалификации: И это мы решили только 30% проблем с машиной", info: "В команде признали, что сильная суббота в Сильверстоуне стала следствием удачного совпадения факторов, но в дальнейшем рассчитывают ехать столь же быстро и в других ситуациях", link: "https://ru.motorsport.com/f1/news/mclaren-posle-kvalifikatsii-i-eto-my-reshili-tolko-30-problem-s-mashinoj/10493640/")
        let news17 = News(image: NewsImage.img17, title: "«Поставьте их машину рядом с Red Bull. Они одинаковые». Льюис объяснил успех McLaren", info: "Гонщик Mercedes назвал успех соперников в Сильверстоуне тревожным звоночком для своей команды", link: "https://ru.motorsport.com/f1/news/postavte-ikh-mashinu-ryadom-s-red-bull-oni-odinakovye-lyuis-obyasnil-uspekh-mclaren/10493629/")
        
        
        news.append(News(image: NewsImage.img1, title: "", info: "", link: ""))
        news.append(news1)
        news.append(news2)
        news.append(news3)
        news.append(news4)
        news.append(news5)
        news.append(news6)
        news.append(news7)
        news.append(news8)
        news.append(news9)
        news.append(news10)
        news.append(news11)
        news.append(news12)
        news.append(news13)
        news.append(news14)
        news.append(news15)
        news.append(news16)
        news.append(news17)
    }
}
