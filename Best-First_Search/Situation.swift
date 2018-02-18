//
//  Situation.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Situation{
    
    var matrix = [[Int]]()
    
    init(matrix: [[Int]]){
        self.matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
    }
    
    public func getMatrix() -> [[Int]]{
        return matrix
    }
    
    public func setMatrix(aMatrix: [[Int]]) {
        matrix = aMatrix
    }
    
    private func manhattanDistance()->Double{
        var j: Int
        var i: Int
        var manhattanDistance: Double
        var token: Int
        var targetX: Int
        var targetY: Int
        var differenceX: Int
        var differenceY: Int
        
        manhattanDistance = 0
        
        return manhattanDistance
        
    }
    
    public func heuristicFunction() -> Double{
        var value : Double
        value = manhattanDistance()
        return value
    }
} //end situation
