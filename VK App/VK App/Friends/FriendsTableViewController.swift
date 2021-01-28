//
//  FriendsTableViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 21.01.2021.
//

import UIKit

struct Friend {
    let name: String
    let photo: String
}

class FriendsTableViewController: UITableViewController {
    
    var newFriends = [
        Friend(name: "Игорь Гомзяков", photo: "Игорь"),
        Friend(name: "Анастасия Гомзякова", photo: "Анастасия"),
        Friend(name: "Илья Криль", photo: "Илья"),
        Friend(name: "Евгений Воробьев", photo: "Евгений"),
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newFriends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "999", for: indexPath)
        guard let friendsCell = cell as? FriendsTableViewCell else { return cell }
        let friends = newFriends [indexPath.row]
        friendsCell.friendsImageView?.image = UIImage(named: friends.photo)
        friendsCell.friendsLabel?.text = friends.name
        //стрелочка на ячейке друга
        cell.accessoryType = .disclosureIndicator

        return friendsCell
        }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            newFriends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
//    //сега для октрытия картинки друга
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let FriendVC = segue.destination as? FriendsViewController else { return }
//        guard let selectedIndexPatch = tableView.indexPathForSelectedRow else { return }
//        FriendVC.photo = newFriends[selectedIndexPatch.row].image
//        FriendVC.title = newFriends[selectedIndexPatch.row].name
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "888" {
            let photoAlbum = segue.destination as? FriendsViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                _ = newFriends[indexPath.row]
                photoAlbum?.newFriends = newFriends
            }
        }
    }
    
}

