//
//  HomeViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var GameNameLabel: UILabel!
    @IBOutlet weak var PlayButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GameNameLabel.text = "Boissons"
        GameNameLabel.center.x = self.view.center.x
        GameNameLabel.center.y = self.view.center.y / 2
        
        PlayButton.setTitle("JOUER", for: .normal)
        PlayButton.center.x = self.view.center.x
        PlayButton.center.y = self.view.center.y / 2 * 3
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
