// week 1, class 2 homework

import UIKit

// Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var planets = ["Mercury", "Venus", "Mars"]

func containsEarth(array: [String]) -> [String]{
    var array = array
    if !array.contains("Earth") {
        array.append("Earth")
    }
    return array
}

containsEarth(planets)

// Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

var solarsystem = planets.reduce("") { (result, planet) -> String in
    return result + planet + ", "
}

let range = solarsystem.endIndex.advancedBy(-2)..<solarsystem.endIndex
solarsystem.removeRange(range)


// Declare and implement a dictionary that can contain as values Strings, Ints, etc

var dictionary = [:]
dictionary = ["one": "one", "two": 2]

// Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

var dictionaryTwo = [Int: String]()
dictionaryTwo = [1: "one", 2: "two", 3: "three", 4: "four"]

func dictionaryFilter(searchTerm: String, dictionary: [Int: String]) {
    dictionary.filter { (key: Int, value: String) -> Bool in
        return value == searchTerm
    }
}

dictionaryFilter("two", dictionary: dictionaryTwo)

// Write examples for union, intersect, subtract, exclusiveOr set operations

let setOne: Set = [1, 1, 2, 3, 3, 4, 6, 7]
let setTwo: Set = [4, 5, 6, 8, 9]

let union = setOne.union(setTwo)
let intersect = setOne.intersect(setTwo)
let subtract = setOne.subtract(setTwo)
let exclusiveOr = setOne.exclusiveOr(setTwo)

// Write a function that counts repeating words and prints out the count of each

let puppyDictionary: [String: String] = ["bichon": "Laika", "golden": "Hunter", "bulldog": "Rose", "lab": "Hunter"]

func countRepeatNames(searchTerm: String, dictionary: [String: String]) -> String {
    var count = 0
    for (_, value) in dictionary {
        if value == searchTerm {
            count += 1
        }
    }
    return "\(searchTerm) appears \(count) times in this dictionary"
}

countRepeatNames("Hunter", dictionary: puppyDictionary)

// Add two numbers without using “+”

func sumTwoInts(numOne: Int, numTwo: Int) {
    var smallNum: Int
    var largeNum: Int
    if numOne < numTwo {
        smallNum = numOne
        largeNum = numTwo
    } else {
        smallNum = numTwo
        largeNum = numOne
    }
    for num in 0...smallNum {
        var sum = largeNum++
        print(sum)
    }
}

sumTwoInts(6, numTwo: 3)

// My first solution was as follows. Michael asked me to solve again, the second time with a function that takes two Int parameters as shown above.

// var numOne = 8
// var numTwo = 10
//
// for num in 0...numOne {
//    var sum = numTwo++
//    print(sum)
// }






