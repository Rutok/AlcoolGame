//
//  SettingsViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var nbPlayerLabel: UILabel!
    @IBOutlet weak var nbPlayerStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NextButton.setTitle("SUIVANT", for: .normal)
        NextButton.center.x = self.view.center.x
        NextButton.center.y = self.view.center.y / 2 * 3
        
        questionLabel.text = "Saisissez le nombre de joueurs"
        questionLabel.center.x = self.view.center.x
        questionLabel.center.y = self.view.center.y / 2
        
        nbPlayerLabel.text = "0"
        nbPlayerLabel.center.x = self.view.center.x
        nbPlayerLabel.center.y = self.view.center.y
        
        nbPlayerStepper.value = 0
        nbPlayerStepper.center.x = self.view.center.x
        nbPlayerStepper.center.y = nbPlayerLabel.center.y + 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        nbPlayerLabel.text = "\(Int(sender.value))"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? NameSetViewController {
            dest.NbPlayers = Int(nbPlayerStepper.value)
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if Int(nbPlayerStepper.value) > 0 {
            return true
        }
        return false
    }
}
