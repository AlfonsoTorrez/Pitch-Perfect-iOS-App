//
//  NewNoteViewController.swift
//  Demo1
//
//  Created by Alfonso Torres on 9/17/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class NewNoteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var noteTextView: UITextView!
    
    @IBAction func saveAction(_ sender: UIButton) {
        var info = "";
        info = noteTextView.text;
        myNotes.append(info);
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
