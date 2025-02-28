//
//  Person.swift
//  ContactList
//
//  Created by Alexander Fedotov on 26.02.2025.
//

import Foundation

struct Person {
    
    let names: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(names) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                names: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
