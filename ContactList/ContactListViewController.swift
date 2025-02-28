//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Alexander Fedotov on 26.02.2025.
//

import UIKit

class ContactListViewController: UITableViewController {

    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactDetailViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
    }

}
