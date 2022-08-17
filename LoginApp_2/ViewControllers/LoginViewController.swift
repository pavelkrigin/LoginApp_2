//
//  ViewController.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 12.8.22..
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passWordTF: UITextField!
    
    private let user = "1"
    private let password = "123"
                
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUserText = userNameTF.text ?? ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        identifier == "1"
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passWordTF.text = ""
    }
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user && passWordTF.text == password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            return
            
        }
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "OOPS!", and: "Your name is \(user)")
    }
        
    @IBAction func forgotPWPressed() {
        showAlert(with: "OOPS!", and: "Your password is \(password)")
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


