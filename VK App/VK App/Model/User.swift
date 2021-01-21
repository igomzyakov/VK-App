//
//  User.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.
//

import UIKit

struct Friends {
    var name: String
    var photo: UIImage?
    
    init(name: String, photo: String) {
        self.name = name
        self.photo = UIImage(named: photo)
    }
}
    extension Friends: Equatable {
        static func == (lhs: Friends, rhs: Friends) -> Bool {
            lhs.name == rhs.name && lhs.photo == rhs.photo
        }
}

