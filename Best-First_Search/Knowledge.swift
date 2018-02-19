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
        var rowWithZero: Int
        var columnWithZero: Int
        var i: Int
        var j: Int
        var newMatrix: [[Int]]
        
        newMatrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
        rowWithZero = -1
        columnWithZero = -1
        i = 0
        while(i < 3){
            j = 0
            while(j < 3){
                newMatrix[i][j] = aState.matrix[i][j]
                if(aState.matrix[i][j] == 0){
                    rowWithZero = i
                    columnWithZero = j
                } //end if
                j = j + 1
            } //end while
            i = i + 1
        } //end while
        
        if(aCommitment == "up"){
            newMatrix[rowWithZero][columnWithZero] = aState.matrix[rowWithZero+1][columnWithZero]
            newMatrix[rowWithZero + 1][columnWithZero] = 0
        } //end if
        if(aCommitment == "down"){
            newMatrix[rowWithZero][columnWithZero] = aState.matrix[rowWithZero - 1][columnWithZero]
            newMatrix[rowWithZero - 1][columnWithZero] = 0
        } //end if
        if(aCommitment == "right"){
            newMatrix[rowWithZero][columnWithZero] = aState.matrix[rowWithZero][columnWithZero - 1]
            newMatrix[rowWithZero][columnWithZero - 1] = 0
        } //end if
        if(aCommitment == "left"){
            newMatrix[rowWithZero][columnWithZero] = aState.matrix[rowWithZero][columnWithZero + 1]
            newMatrix[rowWithZero][columnWithZero + 1] = 0
        } //end if
        
        newNode = Node.init()
        newState = Situation.init()
        newState.setMatrix(aMatrix: newMatrix)
        newNode.setState(aState: newState)
        
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
