//
//  TabBarController.swift
//  ContactList
//
//  Created by user on 29.03.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        transferData()
    }
    
    
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let viewControllerVC = navigationVC.topViewController
                guard let viewControllerVC = viewControllerVC as? ViewController else { return }
                viewControllerVC.person = person
            } else if let navigationVC = $0 as? UINavigationController {
                let personsListVC = navigationVC.topViewController
                guard let personsListVC = personsListVC as? PersonsListViewController else { return }
                personsListVC.person = person

            }
        }
        
    }
    
}

