//
//  Deck.swift
//  Matchismo
//
//  Created by Kyle Brogle on 6/3/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//
import Foundation

class Deck
{
    @lazy var cards = Card[]()
    
    func addCard(card: Card, atTop: Bool = false){
        if(atTop){
            cards.insert(card, atIndex: 0)
        } else{
            cards += card
        }
    }
    
    func drawRandomCard()->Card?{
        if(!cards.isEmpty){
            let card: Card = cards.removeAtIndex(Int(arc4random()) % self.count)
            NSLog("Card contains: %s", card.contents)
            return card
        } else{
            return nil
        }
    }
    
    var count: Int{
    get{
        return cards.count
    }
    
    }
}