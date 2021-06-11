//
//  Country.swift
//  TableViewCountries
//
//  Created by Alex Lai on 11/6/21.
//

import Foundation

class Country{
    var name: String
    var flag: String
    var region: String
    var population: String
    
    init(name: String, flag: String, region: String, population: String) {
        self.name = name
        self.flag = flag
        self.region = region
        self.population = population
    }
}
