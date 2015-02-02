//
//  Entity.swift
//  CandlePinScore
//
//  Created by George Fitzgibbons on 1/16/15.
//  Copyright (c) 2015 Nanigans. All rights reserved.
//

import Foundation
import CoreData
@objc (Entity)


class Entity: NSManagedObject {

    @NSManaged var playerone: String
    @NSManaged var playertwo: String
    @NSManaged var playerthree: String

}
