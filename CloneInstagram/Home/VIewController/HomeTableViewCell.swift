//
//  HomeTableViewCell.swift
//  CloneInstagram
//
//  Created by 1 on 2022/11/17.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    var count: Bool = true
    
    
    @IBOutlet weak var idImage: UIImageView!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var subIdLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        likeButton.addTarget(self, action: #selector(like), for: .touchUpInside)
        addButton.addTarget(self, action: #selector(add), for: .touchUpInside)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    @objc func add(sender: UIButton) {
        let storyboacrd = UIStoryboard.init(name: "PopUpView", bundle: nil)
        let popUpVC = storyboacrd.instantiateViewController(withIdentifier: "PopUpView") as! PopUpView
        popUpVC.modalPresentationStyle = .overCurrentContext
        popUpVC.modalTransitionStyle = .crossDissolve
        popUpVC.present(popUpVC, animated: true)
        
//        let storyboacrd = PopUpView(nibName: "PopUpView", bundle: nil)
//        storyboacrd.modalPresentationStyle = .overCurrentContext
//        storyboacrd.modalTransitionStyle = .crossDissolve
//        storyboacrd.present(storyboacrd, animated: false)
        print("add")
//        let customPopUpVc = storyboacrd.instantiateViewController(withIdentifier: "PopUpview") as! PopUpViewController
//        customPopUpVc.modalPresentationStyle = .overCurrentContext
//        customPopUpVc.modalTransitionStyle = .crossDissolve
    }
    
    @objc func like(sender:UIButton) {
            if count == true {
                likeButton.setTitleShadowColor(.red, for: .normal)
                likeButton.backgroundColor = UIColor.red
                print("good")
            } else {
                likeButton.backgroundColor = .black
                print("취소")
            }
    }
   
}
