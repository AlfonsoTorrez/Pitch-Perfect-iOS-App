//
//  HeroStats.swift
//  Demo3
//
//  Created by Alfonso Torres on 12/21/17.
//  Copyright © 2017 Alfonso Torres. All rights reserved.
//

import Foundation

struct HeroStats:Decodable{
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let legs: Int
    let img: String
}



