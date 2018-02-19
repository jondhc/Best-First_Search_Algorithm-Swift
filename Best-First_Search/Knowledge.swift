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
        if(state.matrix[0][0] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[0][0] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[0][1] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[0][1] == 0){
            candidates.append("right")
        } //end if
        if(state.matrix[0][1] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[0][2] == 0){
            candidates.append("right")
        } //end if
        if(state.matrix[0][2] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[1][0] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[1][0] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[1][0] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[1][1] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[1][1] == 0){
            candidates.append("right")
        } //end if
        if(state.matrix[1][1] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[1][1] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[1][2] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[1][2] == 0){
            candidates.append("right")
        } //end if
        if(state.matrix[1][2] == 0){
            candidates.append("up")
        } //end if
        if(state.matrix[2][0] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[2][0] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[2][1] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[2][1] == 0){
            candidates.append("right")
        } //end if
        if(state.matrix[2][1] == 0){
            candidates.append("left")
        } //end if
        if(state.matrix[2][2] == 0){
            candidates.append("down")
        } //end if
        if(state.matrix[2][2] == 0){
            candidates.append("right")
        } //end if
        
        return candidates
    } //end getCommitments
    
    private static func createNode(aState: Situation, aCommitment: String) -> Node{
        var newNode: Node
        var newState: Situation
        newNode = Node.init()
        
        return newNode
    } //end createNode
    
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
            node = createNode(aState: state, aCommitment: aCommitment)
            possibleNodes.append(node)
            i = i + 1
        } //end while
        return possibleNodes
    } // end getNextPossibleNodes
} //end knowledge
