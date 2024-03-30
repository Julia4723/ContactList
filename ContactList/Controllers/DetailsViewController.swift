//
//  DetailsViewController.swift
//  ContactList
//
//  Created by user on 28.03.2024.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    private var personList = Person.getUser(numPeople: 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phone.text = "Телефон: \(person.phone)"
        email.text = "Почта: \(person.email)"
    

    }
    


}
