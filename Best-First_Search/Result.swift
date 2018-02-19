//
//  Result.swift
//  Best-First_Search
//
//  Created by Jonathan Daniel on 1/30/18.
//  Copyright © 2018 Jonathan Daniel. All rights reserved.
//

import Foundation

public class Result{
    private var found: Bool
    private var plan: [Node]
    
    init(){
        found = false
        plan = []
    } //end init
    
    public func setFound(hasBeenFound: Bool) -> Void{
        found = hasBeenFound
    } //end setFound
    
    public func getPlan() -> [Node]{
        return plan
    } //end getPlan
    
    public func setPlan(aPlan: [Node]) -> Void{
        plan = aPlan
    } //end setPlan
    
} //end Result
