//
//  PlayingCardDeck.swift
//  Matchismo
//
//  Created by Kyle Brogle on 6/3/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

class PlayingCardDeck: Deck
{    init()
    {
        super.init()
        for suit in PlayingCard.validSuits(){
            for rank in 1..(PlayingCard.validRanks().count){
                var card = PlayingCard(suit: suit, rank: rank)
                self.addCard(card)
            }
            
        }
    }
}
