//
//  Store.swift
//  ToDo
//
//  Created by Erin Roby on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    typealias Object = Todo
    
    var todos = [Object]()
}
