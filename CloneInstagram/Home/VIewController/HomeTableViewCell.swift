//
//  HomeTableViewCell.swift
//  CloneInstagram
//
//  Created by 1 on 2022/11/17.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    var count: Int = 1
    
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
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    @objc func like(sender:UIButton) {
        //        switch likeButton {
        //        case likeButton.backgroundColor = .red
        //        print("좋아요")
        //
        //    } else {
        //        likeButton.backgroundColor = .black
        //        print("취소")
        //    }
    }
}
