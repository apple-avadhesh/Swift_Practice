import Foundation


struct Card {
    let rank: Rank
    let suit: Suit
    
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace = 1
    }
    
    enum Suit: String {
        case heart, diamond, club, spades
    }
}

struct PokerHand {
    let cards: [Card]
}

let jack = Card.Rank(rawValue: 11)
let invalidRank = Card.Rank(rawValue: -2)
let aceRank = Card.Rank(rawValue: 1)

print(jack)
print(invalidRank)
print(aceRank)

print("Raw value of jack is 11? \(jack?.rawValue == 11)")
print("Raw value of Diamond? \(Card.Suit.diamond)")
