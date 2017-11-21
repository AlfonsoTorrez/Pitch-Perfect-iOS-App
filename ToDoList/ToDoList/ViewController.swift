//
//Make a storyboard with at least 2 controllers and at least 1 segue
//Every controller should have a few different types of views that are laid out and sized, and react to orientation changes
//Make a view controller that responds to at least one action
//Present an alert with and without feedback
//Update a view based on the feedback
//Use an UIImageView and register the image as an image asset
//Create a simple app icon (or copy one) and make an app icon set
//Make your own Cocoapod with a public repository that includes something simple

//  ViewController.swift
//  ToDoList
//
//  Created by Alfonso Torres on 10/13/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    var course: String = ""
    var note: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLabel.text = note
        courseLabel.text = course
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newNoteButton(_ sender: Any) {
        performSegue(withIdentifier: "NoteSegue", sender: self)
    }

}

