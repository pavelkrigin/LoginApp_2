//
//  ViewController.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 12.8.22..
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var passWord: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC =
////        guard segue.destination is WelcomeViewController else { return }
//
//}
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
    }

}

