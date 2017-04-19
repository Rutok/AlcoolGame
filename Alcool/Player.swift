//
//  Player.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import Foundation
import SpriteKit

class Player {
    
    let frontColor : SKColor
    
    let id : UInt32
    let player_name : String
    
    init(id : UInt32, pname : String) {       
        frontColor = .init(colorLiteralRed: Float(arc4random_uniform(255)) / 255, green: Float(arc4random_uniform(255)) / 255, blue: Float(arc4random_uniform(255)) / 255, alpha: 1)
        player_name = pname
        self.id = id
    }
}
