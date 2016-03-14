//
//  EightBallModel.swift
//  Magic 8 ball
//
//  Created by Chen Jonathan on 3/7/16.
//  Copyright © 2016 Chen Yi Tai. All rights reserved.
//

import Foundation

class EnightBallModel : CustomStringConvertible, CustomDebugStringConvertible {
//class EnightBallModel{
    
    static let 😀 : String = " emoji"
    
    let initialResponseArray :[String] = ["Maybe", "Yeah", "No", "Not sure", "Maybe not", 😀]
    var responseArray :[String]?

    var description :String {
        get {
            var output = ""
            
            if let unwrappedResponseArray: [String] = responseArray
            {
                for index in 0..<unwrappedResponseArray.count
                {
                    output += unwrappedResponseArray[index]
                }
            }
            
            return output
        }
    }
    
    
    var debugDescription: String {
        get {
            
            return "Debug:😀 "+description
        }
    }
    
    init()
    {
        responseArray = [String] ()
        
        responseArray?.appendContentsOf(initialResponseArray)
       
    }
    
    init(extraResponseArray : Array<String>)
    {
        responseArray = [String] ()
        responseArray?.appendContentsOf(initialResponseArray)
        responseArray?.appendContentsOf(extraResponseArray)
        
    }
    
    func askquestion (question : String)
    {
        print(question);
        
        
        let randomIndex = Int(arc4random_uniform(UInt32(responseArray!.count)))
        
        print(responseArray![randomIndex])
        
    }
    
    func getResponse() -> String
    {
        let randomIndex = Int(arc4random_uniform(UInt32(responseArray!.count)))
        return responseArray![randomIndex]
    }
    
    func printable()
    {
        print(description)
    }
    
    func debugPrint()
    {
        print(debugDescription)
    }
    
   
}
