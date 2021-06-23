import Foundation

/// Link: https://www.raywenderlich.com/2271-operator-overloading-in-swift-tutorial

/*:
    Operator Types:
        Infix Operator
        Postfix Operator
        Prefix Operator
 
 Operator overloading allows you to change the way existing operators work with specific structures or classes.
           
*/

/// Example: + Operator Overload

struct Product: Hashable {
    var name: String
    var lastName: String
}

struct Order {
    let products: [Product: Int]
    
   
    static func +(lhs: Order, rhs: Order) -> Order {
        var allProducts = lhs.products
        
        for(product, amount) in rhs.products {
            if let currentAmount = allProducts[product] {
                allProducts[product] = amount + currentAmount
            } else {
                allProducts[product] = amount
            }
        }
        return Order(products: allProducts)
    }
}

let order1 = Order(products: [Product(name: "Apple", lastName: "App"):10, Product(name: "Kiwi", lastName: "App"): 5])
let order2 = Order(products: [Product(name: "Pineapple", lastName: "App"):10, Product(name: "Apple", lastName: "App"): 15])
print(order1 + order2)

/// Example: Infix Operator

infix operator ^^

extension Double {
    static func ^^ (lhs: Double, rhs: Double) -> Double {
        return pow(lhs, rhs)
    }
}

print(2^^8)

/// Example: Postfix Operator

postfix operator ++
prefix operator ++

extension Int {
    
    /// Unary operator implementation must have a 'prefix' or 'postfix' modifier
    
    static prefix func ++(rhs: Int) -> Int {
        return rhs + 1
    }
    
    static postfix func ++(lhs: Int) -> Int {
        return lhs + 1
    }
}

let a = 10
print(++a++)



