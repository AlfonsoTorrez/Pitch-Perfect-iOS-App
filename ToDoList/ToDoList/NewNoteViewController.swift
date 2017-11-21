//
//  NewNoteViewController.swift
//  ToDoList
//
//  Created by Alfonso Torres on 11/1/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
import TB
import RealmSwift

class NewNoteViewController: UIViewController {
    @IBOutlet weak var courseTF: UITextField!
    @IBOutlet weak var noteTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if !courseTF.text!.isEmpty && !noteTF.text!.isEmpty {
            let x = segue.destination as! ViewController
            x.course = courseTF.text!
            x.note = noteTF.text!
        }
    }
    
    @IBAction func doneButton(_ sender: Any) {
        if !courseTF.text!.isEmpty {
            if !noteTF.text!.isEmpty {
                //Info is saved and you are taken to the homepage
                performSegue(withIdentifier: "HomeSegue", sender: self)
            }else{
                //Display Alert box
                createAlert(title: "Empty Note Text Field", message: "Missing note information.")
            }
        }else{
            //Display Alert box
            createAlert(title: "Empty Course Name Text Field", message: "Missing course name.")
        }
        
    }
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    
   


}
