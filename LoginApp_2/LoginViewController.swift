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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUserText = userName.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userName.text = ""
        passWord.text = ""
        
    }
    
    @IBAction func logInButtonPressed() {
        guard let inputText = userName.text, !inputText.isEmpty else {
            showAlert(with: "Invalid login or password", and: "Plese, enter correct login and password")
            return
        }
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "OOPS!", and: "Your name is Pavel")
            return
    }
        
    @IBAction func forgotPWPressed() {
        showAlert(with: "OOPS!", and: "Your password is Password")
        return
    }
}
//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with logInButton: String, and message: String) {
        let alert = UIAlertController(title: logInButton, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


