//
//  CountryViewController.swift
//  Demo2
//
//  Created by Alfonso Torres on 12/19/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    var country:Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryLabel.text = country?.name.capitalized
        capitalLabel.text = country?.capital.capitalized
        imageView.image = country?.image
    }

   
}
