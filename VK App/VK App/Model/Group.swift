//
//  Group.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.
//

import UIKit

struct Group {
    var name: String?
    var photo: UIImage?
    
    init(name: String, photo: String) {
        self.name = name
        self.photo = UIImage(named: photo)
    }
}
    extension Group: Equatable {
        static func == (lhs: Group, rhs: Group) -> Bool {
            lhs.name == rhs.name && lhs.photo == rhs.photo
        }
}



