//
//  operations.swift
//  Calculator
//
//  Created by alican on 20.09.2021.
//

import Foundation
import UIKit

 func isCalculatorInitialized(inputLabel : UILabel) {
    if Calculator.numericButtonFirstPushed == true {
        inputLabel.text = ""
        Calculator.numericButtonFirstPushed.toggle()
    }
}

 func numericNumbersEnterance(_ sender: UIButton,inputLabel : UILabel) {
    if Calculator.firstNumericNumberIsSet == true {
        
        inputLabel.text = String(sender.tag)
        Calculator.numberOne = Double(inputLabel.text!)!
        Calculator.firstNumericNumberIsSet.toggle()
    }
    else {
        // get a another digit numbers after to first digit.
        inputLabel.text = inputLabel.text! + String(sender.tag)
        Calculator.numberOne = Double(inputLabel.text!)!
    }
}

 func clearScreen(_ tag: Int,inputLabel : UILabel) {
    if tag == nonNumericOperations.clear.numericValue {
        Calculator.operation = 0
        Calculator.result = 0
        Calculator.numberOne = 0
        Calculator.numberTwo = 0
        inputLabel.text = String(Calculator.result)
    }
}

 func arithmeticOperation(_ tag: Int,inputLabel : UILabel) {
    if tag != nonNumericOperations.equal.numericValue  && inputLabel.text != ""  {
        Calculator.numberTwo = Double(inputLabel.text!)!
        Calculator.firstNumericNumberIsSet = true
        Calculator.operation = tag
    }
}

 func calculateResult(_ tag: Int,inputLabel : UILabel) {
    if tag == nonNumericOperations.equal.numericValue {
        guard  let selectOperation = arithmeticOperations(rawValue: Calculator.operation) else{return}
        Calculator.result = selectOperation.arithmeticOperationType(numberOne: Calculator.numberTwo, numberTwo: Calculator.numberOne)
        inputLabel.text = String(Calculator.result)
        Calculator.numberOne = Calculator.result
    }
}
