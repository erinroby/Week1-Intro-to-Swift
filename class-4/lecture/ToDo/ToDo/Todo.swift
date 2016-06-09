//
//  Todo.swift
//  ToDo
//
//  Created by Erin Roby on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Todo: Identity {
    var id: String
    let task: String
    
    init(task: String) {
        self.id = NSUUID().UUIDString
        self.task = task
    }
    
    func description() -> String {
        return "Hey you there, \(self.task)!"
    }
}