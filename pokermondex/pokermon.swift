//
//  pokermon.swift
//  pokermondex
//
//  Created by brian on 02/12/15.
//  Copyright © 2015 bjfmedia. All rights reserved.
//

import Foundation

class pokermon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    init(name: String, pokedexId: Int) {
     
        self._name = name
        self._pokedexId = pokedexId
    }
}