//
//  ViewController.swift
//  Demo2
//
//  Created by Alfonso Torres on 12/14/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    var countries = [Country]()
    
        override func viewDidLoad(){
            super.viewDidLoad()
            let usa = Country(name:"united-states", capital: "washington" )
            countries.append(usa)
            let germany = Country(name:"germany", capital: "berlin" )
            countries.append(germany)
            let uk = Country(name:"united-kingdom", capital: "london" )
            countries.append(uk)
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = countries[indexPath.row].name.capitalized
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        //performSegue(withIdentifier: "bruh", sender: self)
        performSegue(withIdentifier: "showDetails", sender: self)
        //print("bruh")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController{
            destination.country = countries[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}

