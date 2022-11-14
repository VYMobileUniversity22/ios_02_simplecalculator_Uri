//
//  Operation.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 12/11/22.
//

import Foundation
import UIKit

//USE SINGLETON???????????????????????????
class COperation {
    var num1: Int?
    var num2: Int?
    var operato: String = ""
    var result: Int?
    
    //Set the operation to beginning
    func CleanOperator(){
        currentOp.operato = ""
        currentOp.num1 = nil
        currentOp.num2 = nil
    }
    //Funtion for the first state of display
    func CheckIniDisplay(display: UITextField, btnPress: UIButton) {
        if display.text == "0" {
            BtnPressed(btnPres: btnPress, isNill: true, display: display)
        } else {
            BtnPressed(btnPres: btnPress, isNill: false, display: display)
        }
    }
    //Execute the operation
    func ExecOperation(display: UITextField) {
        var value1 = 0
        var value2 = 0
        let operacion = currentOp.operato

        //Setea el segundo valor
        SetSecondValue(display, &value1, &value2)

        switch operacion {
        case "+":
            currentOp.result = value1 + value2
            guard let result = currentOp.result else { return }
            display.text = String(result)
            currentOp.CleanOperator()
            break
        case "-":
            currentOp.result = value1 - value2
            guard let result = currentOp.result else { return }
            display.text = String(result)
            currentOp.CleanOperator()
            break
        case "/":
            currentOp.result = value1 / value2
            guard let result = currentOp.result else { return }
            display.text = String(result)
            currentOp.CleanOperator()
            break
        case "*":
            currentOp.result = value1 * value2
            guard let result = currentOp.result else { return }
            display.text = String(result)
            currentOp.CleanOperator()

            break
        default:
            break
        }
    }
}

