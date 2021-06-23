import Foundation

/// Link: https://developer.apple.com/documentation/swift/hashable

///To use your own custom type in a set or as the key type of a dictionary, add Hashable conformance to your type. The Hashable protocol inherits from the Equatable protocol, so you must also satisfy that protocol’s requirements.

/// Example:

struct Product: Hashable {
    var name: String
}

struct Order {
    var products: [Product: Int]
}

var orders = Order(products: [Product(name: "Apple"): 10, Product(name: "Bannna"): 8 , Product(name: "Pinapple"): 4 , Product(name: "Kiwi"): 2])
orders.products[Product(name: "Apple")] = 30
print(orders)
