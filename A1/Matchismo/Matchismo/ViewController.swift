//
//  ViewController.swift
//  Matchismo
//
//  Created by Kyle Brogle on 6/3/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pcDeck = PlayingCardDeck()
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("Count is %d\n", pcDeck.count)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cardPressed(sender : UIButton) {
        NSLog("Press\n")
        if sender.currentTitle
        {
            
            sender.setBackgroundImage(UIImage(named: "back"), forState:UIControlState.Normal)
            sender.setTitle(nil, forState: UIControlState.Normal)
        }else
        {
            var display = self.pcDeck.drawRandomCard()
            //if(display){
                sender.setTitle("DICKS",forState: UIControlState.Normal)
               // NSLog("Contents %s\n", display!.contents)
                sender.setBackgroundImage(UIImage(named:"front"),forState: UIControlState.Normal)
                
           // }
        }
        
    }
    
    
}

