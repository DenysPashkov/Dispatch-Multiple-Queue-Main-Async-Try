//
//  StructForAPI.swift
//  Divided Api Request
//
//  Created by denys on 10/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import Foundation
//MARK: The structure that have to be read
struct Json4Swift_Base : Codable {
    let records : [Records]
}

struct Records : Codable {
    let id : String
    let fields : Fields
}

struct Fields : Codable {
    let Name : String?
}
