//
//  PokerCell.swift
//  pokermondex
//
//  Created by brian on 04/12/15.
//  Copyright © 2015 bjfmedia. All rights reserved.
//

import UIKit

class PokerCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: pokermon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
      layer.cornerRadius = 5.0
        
    }
   
    
    func configureCell(pokemon: pokermon) {
    self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    
    }

}
