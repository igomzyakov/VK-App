//
//  FriendsViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 23.01.2021.
//

import UIKit



class FriendsViewController: UICollectionViewController {

var friend: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = friend.name
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int { 1 }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { friend.photos.count }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "1000", for: indexPath) as! PhotoCell
        let album = friend.photos[indexPath.row]
        cell.photo.image = album
        return cell
    }
}



