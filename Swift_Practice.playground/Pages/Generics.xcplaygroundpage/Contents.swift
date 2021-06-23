import Foundation

/*
  - Generics can also be used for whole classes or structs
  - They can even define protocol restrictions
  - For example, only types that conform to the equatable protocol
  - Generic type constraints can also be used in extensions
  - This allows us to write an extension for arrays that contain Equatable elements
*/


//MARK: Generic Element in the function
func getMiddleElements<T>(array: [T]) -> T? {
    guard !array.isEmpty else {
        return nil
    }
    return array[array.count / 2 ]
}

let midNum = getMiddleElements(array: [1, 2, 3, 4, 5])
print(midNum!)

let midText = getMiddleElements(array: ["Apple", "Kiwi", "Banana", "Pinapple", "Guava"])
print(midText!)

//MARK: GenericStack
struct Stack<T> {
    private var values: [T] = []
    
    mutating func push(value: T) {
        values.insert(value, at: 0)
    }
    
    mutating func pop() -> T? {
        guard !values.isEmpty else { return nil }
        return values.remove(at: 0)
    }
    
    var isEmpty: Bool {
        return values.isEmpty
    }
}

var stack = Stack<Int>()
stack.push(value: 45)
stack.push(value: 15)
stack.push(value: 10)
stack.pop()
print(stack)

//MARK: Protocol Restriction - Equatable
struct EquatableStack<T: Equatable> {
    
    private var values: [T] = []
    
    mutating func push(value: T) {
        values.insert(value, at: 0)
    }
    
    mutating func pop() -> T {
        return values.remove(at: 0)
    }
    
    var isEmpty: Bool {
        return values.isEmpty
    }
}

extension Stack where T: Equatable {
    mutating func pushIfUnique(value: T) {
        if !values.contains(value) {
            push(value: value)
        }
    }
}

stack.pushIfUnique(value: 15)
print(stack)
