//
//  BestFirst.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class BestFirst: Search{
    
    private static func bestFirst(node: Node, goal: Node) -> Result{
        var nextChild: Node
        var i: Int
        var route: [Node]
        if(found == false){
            node.expand()
            memory!.append(node.getState())
            node.sortChildren()
            if(node.getChildren() != []){
                i = 0
                while((i < node.getChildren().count) && (found == false)){
                    nextChild = node.getChildren()[i]
                    if((nodeIsFinalState(aNode: nextChild, goal: goal)) || (nextChild.heuristicValue == 0)){
                        found = true
                        foundNode = nextChild
                    } //end if
                    else if(memory!.contains(nextChild.getState()) == false){
                        result = bestFirst(node: nextChild, goal: goal)
                    } //end else if
                    i = i + 1
                } //end while
            } //end if
            if(found == true){
                result?.setFound(hasBeenFound: true)
                route = foundNode!.getRoute()
                result?.setPlan(aPlan: route)
            }
            else{
                result?.setFound(hasBeenFound: false)
                result?.setPlan(aPlan: [])
            } //end else
        } //end if
        return result!
    } //end bestFirst
    
    public static func search(initialState: Situation, finalState: Situation) -> Result{
        var route: [Node]
        var root: Node
        var goal: Node
        var memory: [Situation]
        
        root = Node.init()
        root.setState(aState: initialState)
        goal = Node.init()
        goal.setState(aState: finalState)
        found = false
        result = Result.init()
        
        if(root != nil){
            if(nodeIsFinalState(aNode: root, goal: goal) == false){
                result = bestFirst(node: root, goal: goal)
            } //end if
            else{
                result?.setFound(hasBeenFound: true)
                route = []
                route.append(root)
                result?.setPlan(aPlan: route)
                found = true
            } //end else
        } //end if
        print("MOVES: ")
        print("\(result!.getPlan().count - 1)")
        
        return result!
    } //end search
    
} //end BestFirst
