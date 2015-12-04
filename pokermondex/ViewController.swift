//
//  ViewController.swift
//  pokermondex
//
//  Created by brian on 02/12/15.
//  Copyright © 2015 bjfmedia. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    var pokemon = [pokermon]()
    var musicPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        
        initAudio()
        parsePokemonCSV()
        }
    
    func initAudio() {
    let path = NSBundle.mainBundle().pathForResource("01", ofType: "mp3")
        do {
            musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
        } catch let err as NSError {
        print(err.debugDescription)
        
        }

    }
    
    func parsePokemonCSV(){
        
        let path = NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv")!
        do {
        let csv = try CSV(contentsOfURL: path)
        let rows = csv.rows
       
            for row in rows {
             let pokeId = Int(row["id"]!)!
             let name = row["identifier"]!
             let poke = pokermon(name: name, pokedexId: pokeId)
             pokemon.append(poke)
                
            }
            
        } catch let err as NSError {
        print(err.debugDescription)
        }
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell",forIndexPath: indexPath) as? PokerCell {
            
            let poke = pokemon[indexPath.row]
            cell.configureCell(poke)
            
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
    
    
    @IBAction func musicBtnPressed(sender: UIButton!) {
        
        if musicPlayer.playing {
        musicPlayer.stop()
        sender.alpha = 0.2
        }else {
        musicPlayer.play()
        sender.alpha = 1.0
        }
    }
  }


