//
//  SongGenerator.swift
//  setronome
//
//  Created by Justin Hubbard on 3/21/18.
//  Copyright © 2018 Justin Hubbard. All rights reserved.
//

import Foundation

class FakeDataGenerator
{
    static let generator = FakeDataGenerator()
    
    func generateSongs(numberOfSongs: Int) -> [Song]
    {
        var songArr: [Song] = []
        
        for _ in 0...numberOfSongs
        {
            let song: Song = Song()
            
            song.name = "I Write Sins Not Tragedies"
            song.artist = "Panic! At the Disco"
            song.BPM = 120
            
            songArr.append(song)
        }
        
        return songArr
    }
    
    func generateSetLists(numberOfSets: Int) -> [Setlist]
    {
        var setsArr: [Setlist] = []
        
        for _ in 0...numberOfSets
        {
            let setlist: Setlist = Setlist()
            
            setlist.name = "Hollywood Bowl"
            setlist.date = "11/20/1993"
            
            setsArr.append(setlist)
        }
        
        return setsArr
    }
    
}
