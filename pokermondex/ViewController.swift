//
//  ViewController.swift
//  pokermondex
//
//  Created by brian on 02/12/15.
//  Copyright © 2015 bjfmedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell",forIndexPath: indexPath) as? PokerCell {
            
            let pokemon = pokermon(name: "TEST", pokedexId: indexPath.row)
            cell.configureCell(pokemon)
            
            return  cell
        } else {
        
        return UICollectionViewCell()
        }
    }

    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
            }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 718
    
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
         return 1
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
         return CGSizeMake(105, 105)
    
    }
    
  }


