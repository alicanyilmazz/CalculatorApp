//
//  calculator.swift
//  Calculator
//
//  Created by alican on 20.09.2021.
//

import Foundation

class Calculator{
    static var numberOne : Double = 0.0
    static var numberTwo : Double = 0.0
    static var numericButtonFirstPushed = false
    static var firstNumericNumberIsSet = true
    static var operation : Int = 0
    static var result : Double = 0.0
}

enum arithmeticOperations : Int {
    case add = 11
    case substract = 12
    case divide = 13
    case multiply = 14
    
    func arithmeticOperationType(numberOne : Double, numberTwo : Double) -> Double{
        switch self {
        case .add: return numberOne+numberTwo
        case .substract: return numberOne-numberTwo
        case .divide: return numberOne/numberTwo
        case .multiply: return numberOne*numberTwo
        }
    }
}


enum nonNumericOperations : Int{
    case equal = 15
    case clear = 20
    
    /*
    var identifier : Int{
        return self.rawValue
    }
    */
}

extension RawRepresentable where RawValue == Int {
    var numericValue: Int {
        return rawValue
    }
}


