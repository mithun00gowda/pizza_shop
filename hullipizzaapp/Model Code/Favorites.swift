//
//  Fevorites.swift
//  hullipizzaapp
//
//  Created by user on 29/10/26.
//

import SwiftUI

class Favorites{
    var favorites:[MenuItem]
    
    init(){
        self.favorites = []
    }
    
    static func excluded(from:[MenuItem], by:[MenuItem]) -> [MenuItem]{
        let firstSet:Set<MenuItem> = Set(from)
        let secondSet:Set<MenuItem> = Set(by)
        let newSet = firstSet.symmetricDifference(secondSet)
        return Array(newSet).sorted{$0.id < $1.id}
    }
}
