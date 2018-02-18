//
//  Knowledge.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Knowledge{
    
    public static func getCommitments(state: Situation) -> [String]{
        var candidates: [String]
        candidates = []
        
        return candidates
    } //end getCommitments
    
//    private static func createNode(aState: Situation, aCommitment: String) -> Node{
//        var newNode: Node
//        var newState: Situation
//        newNode = Node.init(parent: <#T##Node#>, state: <#T##Situation#>, heuristicValue: <#T##Double#>, children: <#T##[Node]#>)
//        
//        
//        return newNode
//    } //end createNode
    
    public static func getNextPossibleNodes(state: Situation)->[Node]{
        var possibleNodes: [Node]
        var node: Node
        var commitments: [String]
        var aCommitment: String
        var i: Int
        possibleNodes = []
        commitments = getCommitments(state: state)
        i = 0
        while(i < commitments.count){
            aCommitment = commitments[i]
            
        } //end while
        
        
        return possibleNodes
    } // end getNextPossibleNodes
} //end knowledge
