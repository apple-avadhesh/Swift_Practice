import Foundation

/*
 ==================================================  Enums  ====================================================
 
 In Swift enums are types and hence type safety is guaranteed
 Eliminates chance of reducing invalid inputs
 Can be represented by a raw value, but does not have to be
*/

struct Card {
    
    let rank: Rank
    let suit: Suit
    
    enum Rank {
        case two, three, four, five, six, seven, eigth, nine, ten, jack, queen, king, ace
    }
    
    enum Suit {
        case heart, diamond, club, spades
    }
}

struct PokerHand {
    let cards: [Card]
}

let cards = PokerHand(cards: [Card(rank: .six, suit: .heart), Card(rank: .seven, suit: .club)])
print(cards)
