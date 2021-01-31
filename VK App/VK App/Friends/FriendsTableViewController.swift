//
//  FriendsTableViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 21.01.2021.
//

import UIKit



class FriendsTableViewController: UITableViewController {
    
    var friends = FriendsFactory.makeFriends()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "999", for: indexPath) as! FriendsTableViewCell
        let user = friends[indexPath.row]
        cell.friendsLabel?.text = user.name
        cell.friendsLabel?.adjustsFontSizeToFitWidth = true
        cell.friendsLabel?.minimumScaleFactor = CGFloat(10)
        cell.friendsImageView?.image = user.avatar
        //стрелочка на ячейке друга
        cell.accessoryType = .disclosureIndicator
        return cell
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "888" {
            let photoAlbum = segue.destination as? FriendsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                let friend = friends[indexPath.row]
                photoAlbum?.friend = friend
            }
        }
    }
}

