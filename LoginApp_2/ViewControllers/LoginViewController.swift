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
    
    private let user = "Pavel"
    private let password = "123"
    
    //MARK: - Override functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        //привязка опционала
//        welcomeVC.welcomeUserText = userNameTF.text ?? ""
        welcomeVC.welcomeUserText = user
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        identifier == user
//    } // - получается этот метод не нужен? 
    
    //MARK: - IBAction functions
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passWordTF.text = ""
    }
    
    @IBAction func logInButtonPressed() { //IBAct срабатывает когда нажимаешь кнопку
        guard userNameTF.text == user && passWordTF.text == password else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            return
        }
//        shouldPerformSegue(withIdentifier: <#T##String#>, sender: nil) - заменил на performSegue
        performSegue(withIdentifier: "openWelcomeVC", sender: nil) //что этот метод делает? - инициирует вызов метода prepare(for Segue
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "OOPS!", and: "Your name is \(user)😉")
    }
        
    @IBAction func forgotPWPressed() {
        showAlert(with: "OOPS!", and: "Your password is \(password)😉")
    }
}

//@IBAction func forgotRegisterData(_ sender: UIButton) { // привязать к двум кнопкам
//    sender.tag == 0
//    ? showAlert(with: "OOPS!", and: "Your name is \(user)") // это ветка если
//    : showAlert(with: "OOPS!", and: "Your password is \(password)") // это ветка то
//}

//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(with logInButton: String, and message: String) {
        let alert = UIAlertController(title: logInButton, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


