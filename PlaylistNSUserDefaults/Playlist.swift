//
//  Playlist.swift
//  PlaylistNSUserDefaults
//
//  Created by Chad Watts on 5/19/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData


class Playlist: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
 
    convenience init?(name: String, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        guard let entity = NSEntityDescription.entityForName("Playlist", inManagedObjectContext: context) else {
            return nil
        }
        self.init(entity: entity, insertIntoMangageObjectContext: context)
        
        self.name = name
        self.artist = artist
        self.playlist = playlist
    }
    
}
