import Foundation

struct Fruit: Hashable {
    var name: String
    var quantity: Int
}

func +(lhs: [Fruit], rhs: [Fruit]) -> [Fruit] {
    var allFruits = lhs
    
    
    for (index, fruit) in rhs.enumerated() {
        if allFruits[index].name == fruit.name {
            allFruits[index].quantity = fruit.quantity + allFruits[index].quantity
        } else {
            allFruits[index].quantity = allFruits[index].quantity
        }
         
    }
    return allFruits
}

let order1 = [Fruit(name: "Apple",quantity: 10), Fruit(name: "Kiwi",quantity: 5)]
let order2 = [Fruit(name: "Pineapple",quantity: 15), Fruit(name: "Apple",quantity: 8)]
print(order1 + order2)
