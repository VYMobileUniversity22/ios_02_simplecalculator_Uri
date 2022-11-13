//
//  Functions.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 12/11/22.
//

import Foundation
import UIKit

enum operaciones: String {
    case suma = "+"
    case resta = "-"
    case multiplicacion = "*"
    case division = "/"
    case none = "none"
}
var currentOp = COperation()

//Fuction for check if display its 0
func CheckDisplayCero (display: UILabel) -> Bool {
    if(display.text == "0") {
        return false
    } else {
        return true
    }
}
//Funtion for the first state of display
func CheckIniDisplay(display: UITextField, btnPress: UIButton) {
    if display.text == "0" {
        BtnPressed(btnPres: btnPress, isNill: true, display: display)
    } else {
        BtnPressed(btnPres: btnPress, isNill: false, display: display)
    }
}

func BtnPressed(btnPres: UIButton, isNill: Bool, display: UITextField) {
    let btn = btnPres.tag
    switch btn {
    case 0:
        ReturnValue(isNill: isNill, value: "0", display: display)
        break;
    case 1:
        ReturnValue(isNill: isNill, value: "1", display: display)
        break;
    case 2:
        ReturnValue(isNill: isNill, value: "2", display: display)
        break;
    case 3:
        ReturnValue(isNill: isNill, value: "3", display: display)
        break;
    case 4:
        ReturnValue(isNill: isNill, value: "4", display: display)
        break;
    case 5:
        ReturnValue(isNill: isNill, value: "5", display: display)
        break;
    case 6:
        ReturnValue(isNill: isNill, value: "6", display: display)
        break;
    case 7:
        ReturnValue(isNill: isNill, value: "7", display: display)
        break;
    case 8:
        ReturnValue(isNill: isNill, value: "8", display: display)
        break;
    case 9:
        ReturnValue(isNill: isNill, value: "9", display: display)
        break;
    case 10: // AC
        CleanAll(display: display)
        break;
    case 11: // +-
        // Not implemented
        break;
    case 12: // percert
        // Not implemented
        break;
    case 13: // /
        setPosValue(display: display, op: .division)
        break;
    case 14: //x
        setPosValue(display: display, op: .multiplicacion)
        break;
    case 15: // -
        setPosValue(display: display, op: .resta)
        break;
    case 16: // +
        setPosValue(display: display, op: .suma)
        break;
    case 17: // =

        ExecOperation(display: display)
        break;
    case 18: // .
        //Si ja te un punt, no agregar
        if !DisContainDot(display: display) {
            ReturnValue(isNill: isNill, value: "0.", display: display)
        }
        break;
    default:
        break;
    }
}
//Funtion to set the display value
func ReturnValue(isNill: Bool, value: String, display: UITextField) {
    if isNill {
        display.text = value
    } else {
        display.text = (display.text ?? "") + value

    }
}
//Function to check if display have dot
func DisContainDot(display: UITextField) -> Bool {
    guard let dis = display.text else {
        return true
    }
    if dis.contains(".") {
        return true
    } else {
        return false
    }
}
func SetSecondValue(_ display: UITextField, _ value1: inout Int, _ value2: inout Int) {
    //if there is a current operation set the second value
    if currentOp.operato != "" {
        guard let disp = display.text,
            let num1 = currentOp.num1
            else { return }
        let num2 = Int(disp) ?? 0
        value1 = num1
        value2 = num2
    }
}

func ExecOperation(display: UITextField) {
    var value1 = 0
    var value2 = 0
    let operacion = currentOp.operato

    SetSecondValue(display, &value1, &value2)

    switch operacion {
    case "+":
        currentOp.result = value1 + value2
        guard let result = currentOp.result else { return }
        display.text = String(result)
        break
    case "-":
        currentOp.result = value1 - value2
        guard let result = currentOp.result else { return }
        display.text = String(result)
        break
    case "/":
        currentOp.result = value1 / value2
        guard let result = currentOp.result else { return }
        display.text = String(result)
        break
    case "*":
        currentOp.result = value1 * value2
        guard let result = currentOp.result else { return }
        display.text = String(result)

        break
    default:
        break
    }
}
func setPosValue(display: UITextField, op: operaciones) {
    guard let dis = display.text else { return }

    if currentOp.operato == "" {
        if currentOp.num1 == nil {
            currentOp.num1 = Int(dis)
            currentOp.operato = op.rawValue
            display.text = "0"
        }
    }
}
func CleanAll(display: UITextField) {
    guard let dis = display.text else { return }
    display.text = "0"
    currentOp.operato = ""
    currentOp.num1 = nil
    currentOp.num2 = nil
}
