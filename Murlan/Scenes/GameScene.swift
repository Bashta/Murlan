//
//  GameScene.swift
//  Murlan
//
//  Created by Er on 11/30/16.
//  Copyright © 2016 Er. All rights reserved.
//

import SpriteKit

final class GameScene: SKScene {
    
    fileprivate var deck: Deck!
    
    override func didMove(to view: SKView) {
        setupScene()
    }
}

private extension GameScene {
    //MARK: - Private functions
    func addDeck() {
        deck = Deck(shuffled: true, parentNode: self)
       
        guard let view = self.view, let cardSize = deck.cards.first?.size else {
            return
        }
        
        let deckPosition = CGPoint(x: (view.bounds.width / 2) - (cardSize.width / 4), y: (view.bounds.height / 2) - (cardSize.height / 4))
        
        for card in deck.cards {
            card.flip()
            card.position = deckPosition
            addChild(card)
        }
    }

    func addBackground() {
        let backgroundTexture = SKTexture(imageNamed: "background.pdf")
        let background = SKSpriteNode(texture: backgroundTexture, color: .clear, size: backgroundTexture.size())
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
    }

    func setupScene() {
        addBackground()
        addDeck()
    }
}
