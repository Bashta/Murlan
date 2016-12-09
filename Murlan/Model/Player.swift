//
//  Player.swift
//  Murlan
//
//  Created by Er on 12/4/16.
//  Copyright © 2016 Er. All rights reserved.
//

import Foundation

final class Player {
    fileprivate var cards: [Card] = []
    
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

extension Player {
    //MARK: - Public functions
    func addCard(card: Card) {
        self.cards.append(card)
    }
    
    func removeCards(cards: [Card]) {
        self.cards.remove(objects: cards)
    }
    
    func orderCards() {
        cards.sort { card1, card2 in card1 < card2 }
    }
}

private extension Card {
    //MARK: - Private functions
    
}
