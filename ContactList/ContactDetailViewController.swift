//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Alexander Fedotov on 26.02.2025.
//

import UIKit

final class ContactDetailViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
