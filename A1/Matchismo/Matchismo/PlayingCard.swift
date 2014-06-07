//
//  PlayingCard.swift
//  Matchismo
//
//  Created by Kyle Brogle on 6/3/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

class PlayingCard: Card
{
    var suit: String
    var rank: Int
    init(suit: String, rank: Int){
        self.suit = suit
        self.rank = rank
        super.init()
    }
    
    //Hacks until class vars implemented
    class func validRanks()->String[]
    {
        return ["?","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits()->String[]
    {
        return ["♠","♣","♥","♦"]

    }
    override var contents: String {
    get {
        return PlayingCard.validRanks()[rank] + suit
    }
    
    
    }
}
