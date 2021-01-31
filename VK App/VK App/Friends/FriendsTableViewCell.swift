//
//  FriendsTableViewCell.swift
//  VK App
//
//  Created by Игорь Гомзяков on 21.01.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet var friendsImageView: UIImageView?
    @IBOutlet var friendsLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        friendsImageView?.layer.cornerRadius = 5
        friendsImageView?.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
