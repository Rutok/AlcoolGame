//
//  NameSetViewController.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class NameSetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var NbPlayers :Int?
    var PNames = Array<String>()
    
    @IBOutlet weak var Startbutton: UIButton!
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Startbutton.setTitle("START", for: .normal)
        Startbutton.center.x = self.view.center.x
        Startbutton.center.y = self.view.center.y / 2 * 3

        TableView.delegate = self
        TableView.dataSource = self
        TableView.center.x = self.view.center.x
        TableView.center.y = self.view.center.y - 75
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NbPlayers!
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:PlayerTableViewCell = self.TableView.dequeueReusableCell(withIdentifier: "tableCell") as! PlayerTableViewCell
        
        cell.IdLabel.text = "\(indexPath.row + 1)" + ". :"
        cell.NameField.text = "Nom"
        PNames.append("Nom")
        // set the text from the data model
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cells = self.TableView.visibleCells as! Array<PlayerTableViewCell>
        for i in 0..<cells.count {
            PNames[i] = cells[i].NameField.text!
        }
        if let dest = segue.destination as? GameViewController {
            dest.game = Game.init(PlayersName: PNames)
        }
    }
}
