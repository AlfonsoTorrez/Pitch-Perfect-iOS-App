//
//  Country.swift
//  Demo2
//
//  Created by Alfonso Torres on 12/16/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class Country{
    var name: String
    var capital: String
    var image: UIImage
    
    init(name: String, capital: String){
        self.name = name
        self.capital = capital
        
        image = UIImage(named: self.name)!
    }
}
