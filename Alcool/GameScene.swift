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
    var TitleLabel :SKLabelNode
    var DescLabel :SKLabelNode
    
    required init?(coder aDecoder: NSCoder) {
        game = nil
        TitleLabel = SKLabelNode()
        TitleLabel.fontSize = 45
        TitleLabel.fontColor = SKColor.white
        TitleLabel.position = CGPoint(x: 0, y: 100)
      //  DescLabel = SKMultilineLabel(text: " ", labelWidth: Int(UIScreen.main.bounds.width), pos: CGPoint(x: 10, y: 10), fontName: "ChalkboardSE-Regular",fontSize: 25,fontColor: UIColor.white,leading: nil, alignment: .center, shouldShowBorder: false)
        DescLabel = SKLabelNode()
        DescLabel.fontSize = 25
        DescLabel.fontColor = SKColor.white
        DescLabel.position = CGPoint(x: 0, y: 10)

        super.init(coder: aDecoder)
        addChild(TitleLabel)
        addChild(DescLabel)
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
    
    func newTurn() {
        self.game?.currentActivity = game?.getNewActivity()
        self.TitleLabel.text = self.game?.currentActivity?.getTitle()
        self.DescLabel.text = (self.game?.currentActivity?.getDescription(PlayerTurn: (game?.players[(game?.turn)! % (game?.players.count)!])!, Players: nil))!
    }
    
    func setLabel() {
        self.TitleLabel.text = self.game?.currentActivity?.getTitle()
        self.DescLabel.text = (self.game?.currentActivity?.getDescription(PlayerTurn: (game?.players[(game?.turn)! % (game?.players.count)!])!, Players: nil))!
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        game?.turn += 1
        self.newTurn()
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
