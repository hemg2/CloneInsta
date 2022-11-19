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
        
        cell.idLabel.text = "윗 아이디"
        cell.subIdLabel.text = "아래 아이디"
        cell.likeCountLabel.text = "f(x)개"
        cell.titleLabel.text = "title란"
        cell.idImage.image = UIImage(named: "instagram")
        cell.titleImage.image = UIImage(named: "Logo Instagram")
        cell.delegate = self // 내가 구현했다는걸 셀프로 알린다
        
//        return tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        return cell
    }
    
    
}

extension HomeViewController: AddButtonDelegate {
    func addTaget() {
        let storyboacrd = UIStoryboard.init(name: "PopUpView", bundle: nil)
        let popUpVC = storyboacrd.instantiateViewController(withIdentifier: "PopUpView") as! PopUpView
        popUpVC.modalPresentationStyle = .overCurrentContext
        popUpVC.modalTransitionStyle = .crossDissolve
        self.present(popUpVC, animated: true)
    }
}
