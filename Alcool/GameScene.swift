//
//  GameScene.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
 /*   private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode? */
    
    var game :Game?
    
    required init?(coder aDecoder: NSCoder) {
        game = nil
        super.init(coder: aDecoder)
    }

    
   /* override func didMove(to view: SKView) {
        
    }
     
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }*/
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        game?.background.color = .init(colorLiteralRed: (Float(arc4random_uniform(255)) / 255.0), green: (Float(arc4random_uniform(255)) / 255.0), blue: (Float(arc4random_uniform(255)) / 255.0), alpha: 1)
    }
    
    /*
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    */
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
