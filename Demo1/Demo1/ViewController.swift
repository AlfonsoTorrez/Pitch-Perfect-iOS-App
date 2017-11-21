//
//  ViewController.swift
//  Demo1
//
//  Created by Alfonso Torres on 11/20/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var homeLabel: UILabel!
    var word: String = "Label";
    override func viewDidLoad() {
        super.viewDidLoad()
        homeLabel.text = word; 
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func changeLabel(_ sender: Any) {
        performSegue(withIdentifier: "changeLabel", sender: self)
    }
    
}

