//
//  ViewController.swift
//  ContactList
//
//  Created by user on 28.03.2024.
//

import UIKit

class ViewController: UITableViewController {

    var person: Person!

    private let personList = Person.getUser(numPeople: 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? DetailsViewController
        detailsVC?.person = personList[indexPath.row]
        
    }


}



//MARK: - UITableViewDataSource
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
        
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let people = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = people.fullName
        
        
        cell.contentConfiguration = content
        return cell
    }
    
    
}
