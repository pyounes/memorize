//
//  MemoryGame.swift
//  Memorize
//
//  Created by Pierre Younes on 4/8/20.
//  Copyright © 2020 PierreWhy. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent ) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    func choose(card: Card) {
        print("Card Chosen: \(card)")
    }
    
    
    struct Card: Identifiable {
                
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
    
}
