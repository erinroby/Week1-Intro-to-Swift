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
        return "\(self.task)"
    }
}

//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.

protocol ObjectStoreProtocol {
    associatedtype Object: Identity
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex() -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

//Extend ObjectStore protocol to provide basic implementation for functions



//Create Store singleton that will conform to ObjectStore protocol and implement requirements

//class Store: ObjectStoreProtocol {
//    static let shared = Store()
//}

//Demonstrate adding / removing of ToDo items.

//let taskOne = Todo("Buy Beer")
//let taskTwo = Todo("Drink Beer")
//let taskThree = Todo("Nap")
//
//Store.shared.add(taskOne)
//Store.shared.add(taskTwo)
//Store.shared.add(taskThree)
//
//Store.shared.remove(taskTwo)
//
//for object in Store.shared.allObjects() {
//    print(object.description)
//}
