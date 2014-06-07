//
//  Card.swift
//  Matchismo
//
//  Created by Kyle Brogle on 6/3/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

class Card
{
    var contents :String
    {
        get{
            return "Hello"
    }
    }
    var chosen = false
    var matched = false
    func match(othercards: Card[]) -> Int
    {
        for card in othercards
        {
            if(card.contents == self.contents){
                return 1
            }
        }
        return 0
    }
    
}