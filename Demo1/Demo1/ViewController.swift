//
//  ViewController.swift
//  Demo1
//
//  Created by Alfonso Torres on 9/11/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit
var myNotes = ["Notes"];


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(myNotes.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = myNotes[indexPath.row]
        
        return (cell)
    }
    

    
    @IBAction func deleteAction(_ sender: UIButton) {
        if(myNotes.count>0){
            myNotes.remove(at: 0);
        }
    }
    
}

