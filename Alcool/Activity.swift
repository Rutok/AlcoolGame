//
//  Activity.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/21/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import Foundation

class Activity {
    private var Title :String
    private var Description :String
    private var nbParticipants :UInt32
    
    init(_ title :String, _ description :String, _ nbPart : UInt32){
        self.Title = title
        self.Description = description
        self.nbParticipants = nbPart
    }
    
    func getTitle() -> String {
        return self.Title
    }
    
    func getDescription(PlayerTurn :Player, Players :Array<Player>?) -> String {
        var desc :String
        
        desc = PlayerTurn.player_name + ", "
        if let p = Players {
            for i in 0..<self.nbParticipants {
                desc += p[Int(i)].player_name + ", "
            }
        }
        desc += self.Description
        return desc
    }
}

//ACT Types
/*
    act instant
    act dans le temps
*/
