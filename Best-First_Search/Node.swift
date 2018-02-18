//
//  Node.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Node{
    private var parent: Node
    var children: [Node]
    private var state: Situation
    var heuristicValue: Double
    var numberOfExpantions: Int = 0
    static var random = arc4random()
    
    init() {
        children = []
        parent = Node.init()
        state = Situation.init()
        heuristicValue = 0
    } //end init
    
    public func getState()->Situation{
        return state
    } //end getState
    
    public func setState(aState: Situation)->Void{
        state = aState
        heuristicValue = state.heuristicFunction()
    } //end setState
    
    public func getParent() -> Node{
        return parent
    } //end getParent
    
    public func setParent(aNode: Node)->Void{
        parent = aNode
    } //end setParent
    
    public func getChildren()->[Node]{
        return children
    } //end getChildren
    
    public func getRoute()->[Node]{
        var route: [Node]
        var node: Node?
        route = []
        route.append(self)
        node = getParent()
        while(node != nil){
            route.append(node!)
            node = node?.getParent()
        } //end while
        route.reverse()
        return route
    } //end getRoute
    
    private func changeOrderIfTwoBestChilds(orderedChildren: [Node]) -> [Node]{
        let aux0: Node
        let aux1: Node
        var orderedChildrenArr: [Node] = orderedChildren
        if(orderedChildrenArr.count >= 2){
            if(orderedChildrenArr[0].heuristicValue == orderedChildrenArr[1].heuristicValue){
                if(arc4random() > 50){                          //check
                    aux0 = orderedChildrenArr[0]
                    aux1 = orderedChildrenArr[1]
                    orderedChildrenArr[0] = aux1
                    orderedChildrenArr[1] = aux0
                } //end if
            } //end if
        } //end if
        return orderedChildrenArr
    } //end changeOrderIfTwoBestChilds
    
    
    
    public func sortChildren() -> Void {
        children.sort()
        children = changeOrderIfTwoBestChilds(orderedChildren: children)
    } //end sortChildren
    
    public func expand () -> Void{
        var i : Int
        numberOfExpantions = numberOfExpantions + 1
        
    } //end expand
    
} //end Node

extension Node: Comparable{
    public static func ==(aNode: Node, anotherNode: Node) -> Bool {
        return aNode.heuristicValue == anotherNode.heuristicValue
    } //end ==
    
    public static func < (aNode: Node, anotherNode: Node) -> Bool{
        if aNode.heuristicValue != anotherNode.heuristicValue{
            return aNode.heuristicValue < anotherNode.heuristicValue
        } //end if
        else{
            return aNode.heuristicValue < anotherNode.heuristicValue
        } //end else
    } //end <
} //end Comparable
