//
//  UserBioViewController.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 22.8.22..
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var userBioTextView: UITextView!
        
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(user.person.fullName) Bio"
        userBioTextView.text = user.person.bio
    }
}
