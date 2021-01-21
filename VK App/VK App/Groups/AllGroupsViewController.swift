//
//  AllGroupsViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.
//

import UIKit

class AllGroupsViewController: UITableViewController {
    
    var newGroups = [
        Group(name: "ВЕЛО - Вельск", photo: "ВелоВельск"),
        Group(name: "Подслушано Вельск", photo: "ПодслушаноВельск"),
        Group(name: "ДорогиВР | Вельск", photo: "ДорогиВР"),
        Group(name: "Администрация Вельского района", photo: "Администрация"),
        ]


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "888", for: indexPath)
            as! GroupsTableViewCell
            let group = newGroups[indexPath.row]
        cell.nameLabel?.text = group.name
        cell.groupsImageView?.image = group.photo
            return cell

    }
}
