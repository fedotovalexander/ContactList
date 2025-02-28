//
//  DataStore.swift
//  ContactList
//
//  Created by Alexander Fedotov on 25.02.2025.
//


final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "John",
        "Jane",
        "Alex",
        "Mary",
        "Bob",
        "Alice",
        "David",
        "Emma",
        "Michael",
        "Sarah"
    ]
    
    let surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Jones",
        "Brown",
        "Davis",
        "Miller",
        "Wilson",
        "Moore",
        "Taylor"
    ]
    
    let emails = [
        "jjjss@mail.ru",
        "jjjjjj@mail.ru",
        "jjjjjc@mail.ru",
        "jjjjbb@mail.ru",
        "jjjjas@mail.ru",
        "vbmmm@mail.ru",
        "obnbj@mail.ru",
        "ptttrrrj@mail.ru",
        "xcvvvn@mail.ru",
        "adfgcvb@mail.ru"
    ]
    
    let phones = [
        "89023488333",
        "89023488334",
        "89023488335",
        "89023488336",
        "89023488337",
        "89023488338",
        "89023488339",
        "89023488340",
        "89023488341",
        "89023488342"
    ]
    
    private init() {}
}

