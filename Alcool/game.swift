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
    var Activities = Array<Activity>()
    var background :SKSpriteNode
    var turn :Int = 0
    var currentActivity :Activity?
    
    init(PlayersName: Array<String>)
    {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        background = SKSpriteNode.init(color: .blue, size: CGSize(width: screenWidth, height: screenHeight))
        for i in 0..<PlayersName.count {
            players.append(Player.init(id: UInt32(i), pname: PlayersName[i]))
        }
        Activities.append(Activity.init("JEU 1", "DESCRIPTION JEU 1 BLABLA", 0))
        Activities.append(Activity.init("JEU 2", "DESCRIPTION JEU 2 BLABLA", 0))
        Activities.append(Activity.init("JEU 3", "DESCRIPTION JEU 3 BLABLA", 0))
        Activities.append(Activity.init("JEU 4", "DESCRIPTION JEU 4 BLABLA", 0))
        Activities.append(Activity.init("JEU 5", "DESCRIPTION JEU 5 BLABLA", 0))
        Activities.append(Activity.init("JEU 6", "DESCRIPTION JEU 6 BLABLA", 0))
        Activities.append(Activity.init("JEU 7", "DESCRIPTION JEU 7 BLABLA", 0))
        currentActivity = nil

    }
    
    func getNewActivity() -> Activity {
        let n = arc4random_uniform(UInt32(Activities.count))
        return Activities[Int(n)]
    }
}
