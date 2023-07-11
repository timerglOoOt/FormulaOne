//
//  NewsViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 10.07.2023.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let newsModel = NewsModel()

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()

           setupTableView()
    }
        
    private func setupTableView() {
        newsTableView.dataSource = self
        newsTableView.delegate = self
        newsTableView.tableHeaderView?.backgroundColor = UIColor.white
        
        newsTableView.register(UINib(nibName: "TitleCell", bundle: nil), forCellReuseIdentifier: "TitleTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        newsModel.news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            let cell = newsTableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell") as! TitleTableViewCell
            
            cell.selectionStyle = .none
 
            return cell
        }
        
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as! NewsTableViewCell
        
        let news = newsModel.news[indexPath.row]
        
        cell.newsImageView.image = UIImage(named: news.image)
        cell.newsTitleLabel.text = news.title
        cell.newsInfoLabel.text = news.info
        cell.selectionStyle = .none
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 45
        }
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let news = newsModel.news[indexPath.row]
        
        if let url = URL(string: news.link) {
            UIApplication.shared.open(url)
        }
    }
}
