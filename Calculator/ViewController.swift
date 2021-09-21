//
//  ViewController.swift
//  Calculator
//
//  Created by alican on 18.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func numericButtonPushed(_ sender: UIButton) {
        
        isCalculatorInitialized(inputLabel: inputLabel)
        numericNumbersEnterance(sender , inputLabel: inputLabel)
    }

    @IBAction func nonnumericButtonPushed(_ sender: UIButton) {

        let tag = sender.tag

        clearScreen(tag,inputLabel: inputLabel)
        arithmeticOperation(tag,inputLabel: inputLabel)
        calculateResult(tag , inputLabel: inputLabel)
    }

}

 
