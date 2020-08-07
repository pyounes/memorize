//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pierre Younes on 4/8/20.
//  Copyright © 2020 PierreWhy. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {

    private var model = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🍔","🍕"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: Access to the Model
    var cards: [MemoryGame<String>.Card] {
         model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
