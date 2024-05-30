//
//  AnyAndAnyObject.swift
//  TypeCheckAndCasting
//
//  Created by E5000866 on 30/05/24.
//

import Foundation

class CustomClass{
    var description: String {
            return "I am a custom class instance."
        }
}

var arr:[Any] = [42, "Hello, world!", CustomClass(), 34.00]

func describeElements(elements: [Any]) {
    for element in elements {
        switch element{
        case is Int :
            print(element, "is Int")

        case is String :
            print(element, "is String")
        
        case is CustomClass :
            print(element, "is Custom Class")
        
        default:
            print(element, "is Unknown type.")
        }
    }
}

