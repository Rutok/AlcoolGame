//
//  HelpViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var HelpTitleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        HelpTitleLabel.text = "Aide"
        HelpTitleLabel.center.x = self.view.center.x
        HelpTitleLabel.center.y = self.view.center.y / 2
        
        backButton.setTitle("RETOUR", for: .normal)
        backButton.center.x = self.view.center.x
        backButton.center.y = self.view.center.y / 2 * 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
