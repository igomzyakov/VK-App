//
//  PhotoCell.swift
//  VK App
//
//  Created by Игорь Гомзяков on 27.01.2021.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBAction func pulseButton(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBOutlet var photo: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likesCounter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.borderWidth = 3
        layer.borderColor = UIColor.cyan.cgColor
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 5
        layer.shadowRadius = 1
        
        likeButton.setImage(#imageLiteral(resourceName: "11_119290_heart_romance_valentines_day_download_red_heart_clipart"), for: .selected)
        likeButton.setImage(#imageLiteral(resourceName: "2e72b56197ecc776518d48477fd8e494"), for: .normal)
        }
    
    @IBAction func like(_ sender: Any?) {
        likeButton.isSelected.toggle()
        likesCounter.textColor = likeButton.isSelected ? .red : .systemGray
        likesCounter.text = likeButton.isSelected ? "1" : "0"
        if likeButton.isSelected {
        }
    }
}
