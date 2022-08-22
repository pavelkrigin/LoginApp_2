//
//  WelcomeViewController.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 13.8.22..
//

import UIKit

final class WelcomeViewController: UIViewController {
        
    @IBOutlet var welcomeLabel: UITextField!
    @IBOutlet var logOutButton: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "\(user.person.fullName)"
        
    }
        
    

}
