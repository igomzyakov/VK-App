//
//  ViewPhoto.swift
//  VK App
//
//  Created by Игорь Гомзяков on 26.01.2021.
//

import UIKit

class ViewPhoto: UIImageView {

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 3
        layer.borderColor = UIColor.darkGray.cgColor
        clipsToBounds = true
        }
    }

class ViewPhoto2: UIImageView {
    
override func layoutSubviews() {
    super.layoutSubviews()
    
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 2.0
    layer.shadowRadius = 5
    
    layer.borderColor = UIColor.darkGray.cgColor
    layer.borderWidth = 2
    
    layer.cornerRadius = bounds.height / 2
    
    clipsToBounds = false
    
    let translation3D = CATransform3DMakeTranslation(-5, 5, 50)
    layer.transform = translation3D
    }

}
