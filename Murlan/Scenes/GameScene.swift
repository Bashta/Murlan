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
        for card in deck.cards {
            card.position = CGPoint(x: 100, y: 200)
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
