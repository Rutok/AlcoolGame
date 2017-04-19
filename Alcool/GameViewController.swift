//
//  GameViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var game :Game?
    
    @IBOutlet weak var SettingsButton: UIButton!
    @IBOutlet weak var HelpButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") as! GameScene?{
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                scene.game = game
                scene.addChild(scene.game!.background)
                view.presentScene(scene)
            }
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        SettingsButton.center.x = screenWidth - (SettingsButton.bounds.width / 2)
        SettingsButton.center.y = 0 + (SettingsButton.bounds.height / 2)
        HelpButton.center.x = screenWidth - (SettingsButton.bounds.width) - (HelpButton.bounds.width / 2)
        HelpButton.center.y = 0 + (HelpButton.bounds.height / 2)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        } else {
            return .portrait
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let view = self.view as! SKView? {
            if let scene = view.scene {
                scene.removeAllChildren()
            }
        }
        if let dest = segue.destination as? HelpViewController {
            dest.game = game
        }
        if let dest = segue.destination as? IGSettingsViewController {
            dest.game = game
        }
    }
}
