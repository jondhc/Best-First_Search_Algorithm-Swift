//
//  Search.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Search{
    public static var foundNode: Node?
    public static var found: Bool?
    public static var result: Result?
    public static var memory: [Situation] = []
    
    public static func nodeIsFinalState(aNode: Node, goal: Node) -> Bool{
        var isFinalState: Bool
        isFinalState = false
        if(aNode.getState() == goal.getState()){
            isFinalState = true
        } //end if
        return isFinalState
    } //end nodeIsFinalState
} //end Search
