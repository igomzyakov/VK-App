//
//  FriendsViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 23.01.2021.
//

import UIKit



class FriendsViewController: UICollectionViewController {



    var newFriends = [Friend]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int { 1 }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { newFriends.count }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "1000", for: indexPath) as! PhotoCell
        let friends = newFriends [indexPath.row]
        cell.photo.image = UIImage(named: friends.photo)
        return cell
    }
    
}


