//
//  WelcomeViewController.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 13.8.22..
//

import UIKit

final class WelcomeViewController: UIViewController {
        
    @IBOutlet var userNameWelcome: UITextField!
    @IBOutlet var logOutButton: UIButton!
    
    var welcomeUserText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameWelcome.text = welcomeUserText
        
    }
        
    

}
