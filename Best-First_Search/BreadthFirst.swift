//
//  BreadthFirst.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 2/22/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class BreadthFirst: Search{
    private static func breadthFirst(aGeneration: [Node]?, goal: Node) -> Result{
        var i: Int
        var j: Int
        var node: Node
        var nextGeneration: [Node]
        var nextChild: Node
        var route: [Node]
        
        if(found == false){
            if(aGeneration != nil){
                nextGeneration = []
                i = 0
                while((i < aGeneration!.count) && (found == false)){
                    node = aGeneration![i]
                    node.expand()
                    memory.append(node.getState()!)
                    if(node.getChildren() != nil){
                        j = 0
                        while((j < node.getChildren().count) && (found == false)){
                            nextChild = node.getChildren()[j]
                            if(memory.contains(nextChild.getState()!) == false){
                                if(nodeIsFinalState(aNode: nextChild, goal: goal)){
                                    found = true
                                    foundNode = nextChild
                                } //end if
                                nextGeneration.append(nextChild)
                            } //end if
                            j = j + 1
                        } //end while
                    } //end if
                    i = i + 1
                } //end while
                if(nextGeneration.count > 0){
                    breadthFirst(aGeneration: nextGeneration, goal: goal)
                } //end if
                if(found == true){
                    result?.setFound(hasBeenFound: true)
                    route = (foundNode?.getRoute())!
                    result?.setPlan(aPlan: route)
                } //end if
                else{
                    result?.setFound(hasBeenFound: false)
                    result?.setPlan(aPlan:[])
                } //end else
            } //end if
        } //end if
        return result!
    } //end breadthFirst
    
    public static func search(initialState: Situation, finalState: Situation) -> Result{
        var route: [Node]
        var founderGeneration: [Node]
        var root: Node
        var goal: Node
        
        root = Node()
        root.setState(aState: initialState)
        goal = Node()
        goal.setState(aState: finalState)
        
        memory = []
        found = false
        result = Result()
        
        if(nodeIsFinalState(aNode: root, goal: goal) == false){
            founderGeneration = []
            founderGeneration.append(root)
            result = breadthFirst(aGeneration: founderGeneration, goal: goal)
        } //end if
        
        else{
            result?.setFound(hasBeenFound: true)
            route = []
            route.append(root)
            result?.setPlan(aPlan: route)
        } //end else
        
        return result!
    } //end search
    
} //end BreadthFirst
