//
//
//Dispatch to a method on a background queue that takes a closure as an argument
//  The method should make a call to a web service API **DONE**
//  The web service API should both send and receive JSON
//  The web service API key should be stored in the keychain 
//  In the closure, dispatch back to the main thread and update the UI
//  Show an indicator of when the app is connected to your web service and when it is not
//  Use a closure as a property on a table cell to get information while the UITableView is being constructed
//  Use app settings to store some configuration available to the user
//  Make sure all settings have defaults that are set (see my examples)
//  Make sure you have at least one piece of PII and store PII in the keychain.
//
//  ViewController.swift
//  Demo3
//
//  Created by Alfonso Torres on 10/25/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = WeatherGetter()
        weather.getWeather(city: "Tracy")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

