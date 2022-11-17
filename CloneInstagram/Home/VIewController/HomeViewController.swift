//
//  HomeViewController.swift
//  CloneInstagram
//
//  Created by 1 on 2022/11/17.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else { fatalError() }
        
        cell.idLabel.text = "햄쥐"
        cell.subIdLabel.text = "아래햄쥐"
        cell.likeCountLabel.text = "10개"
        cell.titleLabel.text = "제목입력하기"
        cell.idImage.image = UIImage(named: "instagram")
        cell.titleImage.image = UIImage(named: "Logo Instagram")
        
        
                
//        return tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        return cell
    }
    
    
}
