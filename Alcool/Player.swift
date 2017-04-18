//
//  Player.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import Foundation
import SpriteKit

class Player: SKSpriteNode {
    
    let frontColor : SKColor
    let backColor : SKColor
    
    let id : UInt32
    let player_name : String
    
    init(id : UInt32, pname : String) {
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        frontColor = .init(colorLiteralRed: Float(arc4random_uniform(255)) / 255, green: Float(arc4random_uniform(255)) / 255, blue: Float(arc4random_uniform(255)) / 255, alpha: 1)
        backColor = .init(colorLiteralRed: Float(arc4random_uniform(255)) / 255, green: Float(arc4random_uniform(255)) / 255, blue: Float(arc4random_uniform(255)) / 255, alpha: 1)
        player_name = pname
        self.id = id
        
        super.init(texture : nil, color: frontColor, size: CGSize(width: screenWidth, height: screenHeight))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NS Coding not supported.")
    }
}
