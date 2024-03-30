//
//  Person.swift
//  ContactList
//
//  Created by user on 28.03.2024.
//


struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    static func getUser(numPeople: Int) -> [Person]{
        var availableNames = DataStore.shareData.names
        var availableSurnames = DataStore.shareData.surnames
        var availableEmail = DataStore.shareData.emails
        var availablePhones = DataStore.shareData.phones
        
        var newUser = [Person]()
        
        for _ in 0..<numPeople {
            guard let name = availableNames.randomElement(),
                  let surname = availableSurnames.randomElement(),
                  let email = availableEmail.randomElement(),
                  let phone = availablePhones.randomElement() else { continue }
            newUser.append((Person(name: name, surname: surname, email: email, phone:phone )))
            
            if let nameIndex = availableNames.firstIndex(of: name) {
                availableNames.remove(at: nameIndex)
            }
            
            if let surnameIndex = availableSurnames.firstIndex(of: surname) {
                availableSurnames.remove(at: surnameIndex)
            }
            
            if let emailIndex = availableEmail.firstIndex(of: email) {
                availableEmail.remove(at: emailIndex)
            }
            
            if let phoneIndex = availablePhones.firstIndex(of: phone) {
                availablePhones.remove(at: phoneIndex)
            }
        }
        return newUser
    }


}


