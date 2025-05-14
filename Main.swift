//
//  Main.swift
//
//  Created by Zak Goneau
//  Created on 2025-05-13
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This is the main file for the tree program

// Import library
import Foundation

// Define main function
func main() {
    // Create an instance of the tree
    let myTree = Tree(height: 30, age: 0, type: "", yearPlanted: 2007, numOfLeaves: 10000)

    // Print initial tree attributes
    print("Initial tree attributes:")
    print("Height: \(myTree.height) feet")
    print("Age: \(myTree.age) years")
    print("Type: \(myTree.type)")
    print("Year Planted: \(myTree.yearPlanted)")
    print("Number of Leaves: \(myTree.numOfLeaves)")

    // Grow tree set amount
    myTree.grow()

    // Grow tree with method overloading
    myTree.grow(height: 10)

    // Lose leaves
    myTree.loseLeaves()

    // Get age
    myTree.getAge()

    // Increment year
    myTree.year()

    // Set tree type
    myTree.type = "Oak"

    // Print updated tree attributes
    print("\nUpdated tree attributes:")
    print("Height: \(myTree.height) feet")
    print("Age: \(myTree.age) years")
    print("Type: \(myTree.type)")
    print("Year Planted: \(myTree.yearPlanted)")
    print("Number of Leaves: \(myTree.numOfLeaves)")
}

//
//  Tree.swift
//
//  Created by Zak Goneau
//  Created on 2025-05-13
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  This is the tree class for the tree program

// Import library
import Foundation

// Define main function
class Tree {
    // Declare attributes
    var height: Int
    var age: Int
    var type: String
    var yearPlanted: Int
    var numOfLeaves: Int

    // Constructor for tree
    init(height: Int, age: Int, type: String, yearPlanted: Int, numOfLeaves: Int) {
        // Set default values
        self.height = height
        self.age = age
        self.type = type
        self.yearPlanted = yearPlanted
        self.numOfLeaves = numOfLeaves
    }

    // Method to grow the tree
    func grow() {
        // Increase height and number of leaves
        self.height += 5
        self.numOfLeaves += 200
    }

    // Grow tree with method overloading
    func grow(height: Int) {
        // Increase height
        self.height += height
    }

    // Lose leaves method
    func loseLeaves() {
        // Set leaves to 0
        self.numOfLeaves = 0
    }

    // Method to get age
    func getAge() {
        // Get age from year planted
        self.age = 2025 - yearPlanted
    }

    // Increment year
    func year() {
        // Increment year
        self.yearPlanted += 1
    }

}

// Call main
main()