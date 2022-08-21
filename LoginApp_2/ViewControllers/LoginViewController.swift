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
    
    let user = User.getUserData()
    
    //MARK: - Override functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITapBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? UserInfoViewController
                else { return }
                userInfoVC.user = user
            
            }
        }
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
      
    //MARK: - IBAction functions
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passWordTF.text = ""
    }
    
    @IBAction func logInButtonPressed() { //IBAct срабатывает когда нажимаешь кнопку
        guard userNameTF.text == user.login && passWordTF.text == user.passWord else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passWordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    

@IBAction func forgotRegisterData(_ sender: UIButton) { // привязать к двум кнопкам
    sender.tag == 0
    ? showAlert(title: "OOPS!", message: "Your name is \(user.login)")
    : showAlert(title: "OOPS!", message: "Your password is \(user.passWord)")
}

//MARK: - private functions

    private func showAlert(title: String, message: String, textField: UITextField? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        
    }
    alert.addAction(okAction)
    present(alert, animated: true)
    }
}



