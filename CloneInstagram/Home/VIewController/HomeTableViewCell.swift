//
//  HomeTableViewCell.swift
//  CloneInstagram
//
//  Created by 1 on 2022/11/17.
//

import UIKit

protocol AddButtonDelegate: AnyObject {
    func addTaget()
    
}

class HomeTableViewCell: UITableViewCell {
    var count: Bool = true
    
  weak var delegate: AddButtonDelegate? // 변수 생성 weak 충돌 방지 
    
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
        delegate?.addTaget() // 델리게이트 명령 하달
//        
//        let storyboacrd = PopUpView(nibName: "PopUpView", bundle: nil)
//        storyboacrd.modalPresentationStyle = .overCurrentContext
//        storyboacrd.modalTransitionStyle = .crossDissolve
//        storyboacrd.present(storyboacrd, animated: false)
        print("add")
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
