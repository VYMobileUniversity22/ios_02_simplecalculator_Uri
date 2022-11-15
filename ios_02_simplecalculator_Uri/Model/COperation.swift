//
//  Operation.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 12/11/22.
//

import Foundation
import UIKit

//TODO: recieve from display in double straight
enum operaciones: String {
    case suma = "+"
    case resta = "-"
    case multiplicacion = "*"
    case division = "/"
    case none = "none"
}

struct COperation {
    var num1: Int?
    var num2: Int?
    var operato: String = ""
    var result: Int?
    var cdisplay = CDisplay()

    //Set the operation to beginning
    mutating func CleanOperator() {
        operato = ""
        num1 = nil
        num2 = nil
    }
    //Funtion for the first state of display
    mutating func CheckIniDisplay(display: UITextField, btnPress: UIButton) {
        if display.text == "0" {
            BtnPressed(btnPres: btnPress, isNill: true, display: display)
        } else {
            BtnPressed(btnPres: btnPress, isNill: false, display: display)
        }
    }
    //TODO: Use variables of the class
    //Execute the operation
    mutating func ExecOperation(display: UITextField) {
        var value1 = 0
        var value2 = 0
        let operacion = operato

        //Setea el segundo valor
        SetSecondValue(display, &value1, &value2)

        switch operacion {
        case "+":
            result = value1 + value2
            guard let result = result else { return }
            display.text = String(result)
            CleanOperator()
            break
        case "-":
            result = value1 - value2
            guard let result = result else { return }
            display.text = String(result)
            CleanOperator()
            break
        case "/":
            result = value1 / value2
            guard let result = result else { return }
            display.text = String(result)
            CleanOperator()
            break
        case "*":
            result = value1 * value2
            guard let result = result else { return }
            display.text = String(result)
            CleanOperator()

            break
        default:
            break
        }
    }
    //TODO: Use variables of the class
    //If there is an value 1 set the operation parameter
    mutating func SetPosValue(display: UITextField, op: operaciones) {
        guard let dis = display.text else { return }

        if operato == "" {
            if num1 == nil {
                num1 = Int(dis)
                operato = op.rawValue
                display.text = "0"
            }
        }
    }
    //TODO: Use variables of the class
    //if there is a current operation set the second value
    func SetSecondValue(_ display: UITextField, _ value1: inout Int, _ value2: inout Int) {
        if operato != "" {
            guard let disp = display.text,
                let num1 = num1
                else { return }
            let num2 = Int(disp) ?? 0
            value1 = num1
            value2 = num2
        }
    }
    //TODO: CLASS DisplayFuntions
    //Implica dos clases. COperation CDisplay
    mutating func BtnPressed(btnPres: UIButton, isNill: Bool, display: UITextField) {
        let btn = btnPres.tag
        switch btn {
        case 0:
            cdisplay.ReturnValue(isNill: isNill, value: "0", display: display)
            break;
        case 1:
            cdisplay.ReturnValue(isNill: isNill, value: "1", display: display)
            break;
        case 2:
            cdisplay.ReturnValue(isNill: isNill, value: "2", display: display)
            break;
        case 3:
            cdisplay.ReturnValue(isNill: isNill, value: "3", display: display)
            break;
        case 4:
            cdisplay.ReturnValue(isNill: isNill, value: "4", display: display)
            break;
        case 5:
            cdisplay.ReturnValue(isNill: isNill, value: "5", display: display)
            break;
        case 6:
            cdisplay.ReturnValue(isNill: isNill, value: "6", display: display)
            break;
        case 7:
            cdisplay.ReturnValue(isNill: isNill, value: "7", display: display)
            break;
        case 8:
            cdisplay.ReturnValue(isNill: isNill, value: "8", display: display)
            break;
        case 9:
            cdisplay.ReturnValue(isNill: isNill, value: "9", display: display)
            break;
        case 10: // AC
            CleanOperator()
            cdisplay.CleanDisplay(display: display)
            break;
        case 11: // +-
            // Not implemented
            break;
        case 12: // percert
            // Not implemented
            break;
        case 13: // /
            SetPosValue(display: display, op: .division)
            break;
        case 14: //x
            SetPosValue(display: display, op: .multiplicacion)
            break;
        case 15: // -
            SetPosValue(display: display, op: .resta)
            break;
        case 16: // +
            SetPosValue(display: display, op: .suma)
            break;
        case 17: // =
            ExecOperation(display: display)
            //ExecOperation(display: display)
            break;
        case 18: // .
            if !cdisplay.DisContainDot(display: display) {
                cdisplay.ReturnValue(isNill: isNill, value: "0.", display: display)
            }
            break;
        default:
            break;
        }
    }
}

