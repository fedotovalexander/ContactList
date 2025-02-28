//
//  SectionViewController.swift
//  ContactList
//
//  Created by Alexander Fedotov on 26.02.2025.
//

import UIKit

class SectionViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
            case 0:
                content.text = person.phoneNumber
                content.image = UIImage(systemName: "phone")
            default:
                content.text = person.email
                content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
