//
//  ObjectStore.swift
//  ToDo
//
//  Created by Erin Roby on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    var todos: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

extension ObjectStoreProtocol {
    func add(object: Object) {
        print(object)
        print(todos)
        return todos.append(object)
    }
    
    func remove(object: Object) {
        self.todos = self.todos.filter({ (todos) -> Bool in
            return object.id != todos.id
        })
    }
    
    func objectAtIndex(index: Int) -> Object {
        return self.todos[index]
    }
    
    func count() -> Int {
        return self.todos.count
    }
    
    func allObjects() -> [Object] {
        return self.todos
    }
}
