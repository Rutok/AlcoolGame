//
//  Game.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/19/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import Foundation
import SpriteKit

class Game {
    
    var players = Array<Player>()
    var background :SKSpriteNode
    
    init(PlayersName: Array<String>)
    {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        background = SKSpriteNode.init(color: .blue, size: CGSize(width: screenWidth, height: screenHeight))
        for i in 0..<PlayersName.count {
            players.append(Player.init(id: UInt32(i), pname: PlayersName[i]))
        }
    }
}
