import Foundation

// Swift inbuilt structs

//Bool Array Double Int Dictionary Set

/*
 Initialization
 - Swift creates initializer automatically
 - It will have parameters for all stored properties except for constant ones with default values
 - If all the stored properties have default values or are optiona
 - If you want to add your own initializer but keep the default ones, you can add your initializer in an extension
 
 Mutation
  - Any method that changes a stored property must be marked with the mutating keyword
  - If a struct is instantiated as a constant, then it can never change and no mutating methods can be called
  - Inside initializers and mutating methods you can assign to self
*/

/*
Reference types - (classes and closures)
 - Each instance exists in one place in memory
 - A reference is passed around not the instance itself

Value types (structs, enums, and tuples)
 - Contain the data itself
 - Behave as if they are copied when passed around
*/

//MARK: Struct - Value Type
let arr: Array = ["Apple","Mango"] // a struct
var arrCopy = arr
arrCopy.removeFirst()

print(arr)
print(arrCopy)

//MARK: Class - Reference Type
let array1: NSMutableArray = ["Apple","Mango"] // a class
let array2 = array1
array2.removeObject(at: 0)

print(array1)
print(array2)



