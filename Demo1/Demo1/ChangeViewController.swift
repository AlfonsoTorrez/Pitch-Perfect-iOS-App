//
//  ChangeViewController.swift
//  Demo1
//
//  Created by Alfonso Torres on 11/20/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
import iOSAppToolBox
class ChangeViewController: UIViewController {
    @IBOutlet weak var changeTF: UITextField!
    var count = false
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if count==true{
            let homeViewController = segue.destination as! ViewController
            homeViewController.word = changeTF.text!
        }
    }
    //Used when Enter button is clicked
    @IBAction func enterButton(_ sender: Any) {
        count = true
        performSegue(withIdentifier: "home", sender: self)
    }
    //Used when Go Back Button is clicked
    @IBAction func goBackButton(_ sender: Any) {
        count = false
        performSegue(withIdentifier: "home", sender: self)
    }
    

    


}
