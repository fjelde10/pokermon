//
//  PokemonDetailsVCViewController.swift
//  pokermondex
//
//  Created by brian on 04/12/15.
//  Copyright © 2015 bjfmedia. All rights reserved.
//

import UIKit

class PokemonDetailsVCViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var desciptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenceLbl: UILabel!
    @IBOutlet weak var hieghtLbl: UILabel!
    @IBOutlet weak var pokemondexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var ecoLbl: UILabel!
    
    
    var pokemon: pokermon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label!.text = pokemon.name
        
    }
    
    @IBAction func backBtnPreesed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    


}
