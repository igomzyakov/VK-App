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
    //метод добавления групп из общего списка
    @IBAction func didSelectGroups(segue: UIStoryboardSegue) {
        guard let allGroupsController = segue.source as? AllGroupsViewController else { return }
        guard let selected = allGroupsController.tableView.indexPathForSelectedRow else { return }
        let groups = allGroupsController.newGroups[selected.row]
        if !newGroups.contains(groups) {
            newGroups.append(groups)
            tableView.reloadData()
        }
}
    
    //метод удаления групп
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            newGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    //метод чтобы мои группы исчезали из списка всех групп
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let AllGroupsController = segue.destination as? AllGroupsViewController else { return }
        let filteredGroups = AllGroupsController.newGroups.filter { groups -> Bool in
            !self.newGroups.contains(groups)
            }
        AllGroupsController.newGroups = filteredGroups
    }
}
