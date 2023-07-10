//
//  NewsViewController.swift
//  FormulaOneApp
//
//  Created by Тимур Хайруллин on 10.07.2023.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    let newsModel = NewsModel()

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()

           setupTableView()
    }
        
    private func setupTableView() {
        newsTableView.dataSource = self
        newsTableView.delegate = self
        
        newsTableView.register(UINib(nibName: "TitleCell", bundle: nil), forCellReuseIdentifier: "TitleTableViewCell")
    }

}
