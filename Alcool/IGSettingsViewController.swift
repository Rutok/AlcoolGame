//
//  IGSettingsViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class IGSettingsViewController: UIViewController {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var QuitButton: UIButton!
    
    var game :Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TitleLabel.text = "Reglages"
        TitleLabel.center.x = self.view.center.x
        TitleLabel.center.y = self.view.center.y / 2
        
        BackButton.setTitle("RETOUR", for: .normal)
        BackButton.center.x = self.view.center.x
        BackButton.center.y = self.view.center.y / 2 * 3
        
        QuitButton.setTitle("MENU", for: .normal)
        QuitButton.center.x = self.view.center.x
        QuitButton.center.y = self.view.center.y / 2 * 3 + 70
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? GameViewController {
            dest.game = game!
        }
    }
}
