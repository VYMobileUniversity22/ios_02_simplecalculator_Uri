//
//  Operation.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 12/11/22.
//

import Foundation
import UIKit

//TODO: USE SINGLETON???????????????????????????
//TODO: ADD ENUMS
class COperation {
    var num1: Int?
    var num2: Int?
    var operato: String = ""
    var result: Int?

    //Set the operation to beginning
    func CleanOperator() {
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
    //TODO: Use variables of the class
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
    //TODO: Use variables of the class
    //If there is an value 1 set the operation parameter
    func SetPosValue(display: UITextField, op: operaciones) {
        guard let dis = display.text else { return }

        if currentOp.operato == "" {
            if currentOp.num1 == nil {
                currentOp.num1 = Int(dis)
                currentOp.operato = op.rawValue
                display.text = "0"
            }
        }
    }
    //TODO: Use variables of the class
    //if there is a current operation set the second value
    func SetSecondValue(_ display: UITextField, _ value1: inout Int, _ value2: inout Int) {
        if currentOp.operato != "" {
            guard let disp = display.text,
                let num1 = currentOp.num1
                else { return }
            let num2 = Int(disp) ?? 0
            value1 = num1
            value2 = num2
        }
    }
}

