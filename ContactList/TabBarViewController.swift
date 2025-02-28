//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alexander Fedotov on 26.02.2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionViewController else { return }
        
        let person = Person.getContactList()
        contactListVC.persons = person
        sectionVC.persons = person
    }
}
