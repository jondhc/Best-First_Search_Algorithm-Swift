//
//  main.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/29/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation


public func showPlan(plan: [Node]) -> Void{
    var i: Int
    i = 0
    while(i < plan.count){
        //print(plan[i])
        var plan: String = plan[i].getState()!.representSituation()
        print(plan)
        i = i + 1
    } //end while
    print("NUMBER OF MOVES: ", terminator: " ")
    print("\(plan.count - 1)")
} //end showPlan

public func showNextMove(plan: [Node]) -> Void{
    print(plan[1])
} //end showNextMove

var initialState: Situation
var finalState: Situation
var matrix: [[Int]]
var result: Result
var plan: [Node]

matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
matrix[0][0] = 0
matrix[0][1] = 2
matrix[0][2] = 3
matrix[1][0] = 5
matrix[1][1] = 8
matrix[1][2] = 6
matrix[2][0] = 1
matrix[2][1] = 4
matrix[2][2] = 7
initialState = Situation()
initialState.setMatrix(aMatrix: matrix)

matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
matrix[0][0] = 1
matrix[0][1] = 2
matrix[0][2] = 3
matrix[1][0] = 4
matrix[1][1] = 5
matrix[1][2] = 6
matrix[2][0] = 7
matrix[2][1] = 8
matrix[2][2] = 0
finalState = Situation()
finalState.setMatrix(aMatrix: matrix)

//BEST-FIRST SEARCH
//result = BestFirst.search(initialState: initialState, finalState: finalState)
//plan = result.getPlan()
//showPlan(plan: plan)

//BREADTH-FIRST SEARCH
result = BreadthFirst.search(initialState: initialState, finalState: finalState)
plan = result.getPlan()
showPlan(plan: plan)



