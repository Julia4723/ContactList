//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by user on 29.03.2024.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var person: Person!
    
    private var personList = Person.getUser(numPeople: 100)
}

    
//MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personList[section].fullName
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PersonsPhoneCell", for: indexPath)
            cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
            let people = personList[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.text = people.phone
            content.image = UIImage(systemName: "phone.fill")
            
            cell.contentConfiguration = content
            return cell
        default:
            let cellTwo = tableView.dequeueReusableCell(withIdentifier: "PersonsEmailCell", for: indexPath)
            cellTwo.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
            let people = personList[indexPath.row]
            
            var content = cellTwo.defaultContentConfiguration()
            content.text = people.email
            content.image = UIImage(systemName: "mail.fill")
            
            cellTwo.contentConfiguration = content
            return cellTwo
        }
        
    }
}
    
   
