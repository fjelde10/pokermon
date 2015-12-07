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
    private var _desciption: String!
    private var _type: String!
    private var _defence: String!
    private var _height: String!
    private var _weight: String!
    private var _attach: String!
    private var _nextEvolutionTxt: String!
    
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