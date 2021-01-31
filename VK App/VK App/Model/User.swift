//
//  User.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.


import UIKit

    struct User {
        var name: String
        var avatar: UIImage?
        var photos: [UIImage?]
    }

    final class FriendsFactory {
        static func makeFriends() -> [User] {
            
            let ana = User(name: "Анастасия Гомзякова", avatar: UIImage(named: "Анастасия"), photos:
                            [UIImage(named: "Анастасия")])
            
            let igor = User(name: "Игорь Гомзяков", avatar: UIImage(named: "Игорь"), photos:
                            [UIImage(named: "Игорь")])
            
            let ilya = User(name: "Илья Криль", avatar: UIImage(named: "Илья"), photos:
                            [UIImage(named: "Илья")])
            
            let evgen = User(name: "Евгений Воробьев", avatar: UIImage(named: "Евгений"), photos:
                            [UIImage(named: "Евгений")])
                           
            
            return [ana, igor, ilya, evgen]
        }
    }
