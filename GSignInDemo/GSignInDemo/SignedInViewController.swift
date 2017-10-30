//
//  SignedInViewController.swift
//  GSignInDemo
//
//  Created by Alfonso Torres on 10/24/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
import GoogleSignIn
import Google


class SignedInViewController: UIViewController{
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var name = String()
    var email = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(email)
        print(name)
        emailLabel.text = email
        nameLabel.text = name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
