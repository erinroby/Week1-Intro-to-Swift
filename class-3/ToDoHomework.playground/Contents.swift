//Week 1, Class 3

import UIKit

//Declare Identity protocol with id function
protocol Identity {
    var id: String { get set }
}

//Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
class Todo: Identity {
    var id: String
    let task: String
    
    init(task: String) {
        self.id = NSUUID().UUIDString
        self.task = task
    }
    
    func description() -> String {
        return "\(self.task)!"
    }
}

//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.

protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    var todos: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

//Extend ObjectStore protocol to provide basic implementation for functions

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

//Create Store singleton that will conform to ObjectStore protocol and implement requirements

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    typealias Object = Todo
    
    var todos = [Object]()
}

//Demonstrate adding / removing of ToDo items.

let taskOne = Todo(task: "Buy Beer")
let taskTwo = Todo(task: "Drink Beer")
let taskThree = Todo(task: "Nap")

Store.shared.add(taskOne)
Store.shared.add(taskTwo)
Store.shared.add(taskThree)

Store.shared.remove(taskTwo)

for todo in Store.shared.allObjects() {
    print("Hey you there, \(todo.description)")
}

Store.shared.allObjects()
Store.shared.count()
