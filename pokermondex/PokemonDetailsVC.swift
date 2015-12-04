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
    var pokemon: pokermon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // label.description = pokemon.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
