//
//  ViewController.swift
//  tempLogin
//
//  Created by Alfonso Torres on 9/25/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let un = usernameTF.text;
        let pw = passwordTF.text;
        print(un);
        print(pw);
    }
    

}

