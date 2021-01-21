//
//  GroupsViewController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 20.01.2021.
//

import UIKit

class GroupsViewController: UITableViewController {
    
    var newGroups = [Group]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func didSelectGroups(segue: UIStoryboardSegue) {
        guard let allGroupsController = segue.source as? AllGroupsViewController else { return }
        guard let selected = allGroupsController.tableView.indexPathForSelectedRow else { return }
        let groups = allGroupsController.newGroups[selected.row]
        if !newGroups.contains(groups) {
            newGroups.append(groups)
            tableView.reloadData()
        }
}
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            newGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

