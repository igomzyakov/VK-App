//
//  GroupsTableViewCell.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        //скругление картинки
        groupsImageView?.layer.cornerRadius = 25
        groupsImageView?.clipsToBounds = true
    }
   
    @IBOutlet var groupsImageView: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
