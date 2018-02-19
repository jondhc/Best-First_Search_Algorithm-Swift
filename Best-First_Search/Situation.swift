//
//  Situation.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Situation{
    
    var matrix:  [[Int]]
    
    init(){
        matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
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
        var absDifferenceX: Double
        var absDifferenceY: Double
        
        manhattanDistance = 0
        i = 0
        while(i < 3){
            j = 0
            while (j < 3){
                token = matrix[i][j]
                if(token != 0){
                    targetX = (token - 1) / 3
                    targetY = (token - 1) % 3
                    differenceX = i - targetX
                    differenceY = j - targetY
                    absDifferenceX = Double.init(abs(differenceX))
                    absDifferenceY = Double.init(abs(differenceY))
                    manhattanDistance = manhattanDistance + absDifferenceX + absDifferenceY
                } //end if
                j = j + 1
            } //end while
            i = i + 1
        } //end while
        return manhattanDistance
    } //end manhattanDistance
    
    public func heuristicFunction() -> Double{
        var value : Double
        value = manhattanDistance()
        return value
    } //end heuristicFunction
    
    public func representSituation() -> String{
        var string: String
        string = "\n"
        string = "\(string) \(matrix[0][0]) "
        string = "\(string) \(matrix[0][1]) "
        string = "\(string) \(matrix[0][2]) \n"
        string = "\(string) \(matrix[1][0]) "
        string = "\(string) \(matrix[1][1]) "
        string = "\(string) \(matrix[1][2]) \n"
        string = "\(string) \(matrix[2][0]) "
        string = "\(string) \(matrix[2][1]) "
        string = "\(string) \(matrix[2][2]) \n\n"
        return string
    } //end representSituation
    
} //end situation

extension Situation: Equatable{
    public static func == (aSituation: Situation, anotherSituation: Situation) -> Bool{
        var i: Int
        var j: Int
        var areEqual: Bool
        areEqual = true
        i = 0
        while(1 < 3){
            j = 0
            while(j < 3){
                if(aSituation.matrix[i][j] != anotherSituation.matrix[i][j]){
                    areEqual = false
                } //end if
                j = j + 1
            } //end while
            i = i + 1
        } //end while
        return areEqual
    } //end ==
} //end Equatable
