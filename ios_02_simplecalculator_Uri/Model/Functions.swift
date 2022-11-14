//
//  Functions.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 12/11/22.
//

import Foundation
import UIKit

//var operation = COperation()
//var currentOp = COperation()

////TODO: CLASS DisplayFuntions
////Implica dos clases. COperation CDisplay
//func BtnPressed(btnPres: UIButton, isNill: Bool, display: UITextField) {
//    let btn = btnPres.tag
//    switch btn {
//    case 0:
//        ReturnValue(isNill: isNill, value: "0", display: display)
//        break;
//    case 1:
//        ReturnValue(isNill: isNill, value: "1", display: display)
//        break;
//    case 2:
//        ReturnValue(isNill: isNill, value: "2", display: display)
//        break;
//    case 3:
//        ReturnValue(isNill: isNill, value: "3", display: display)
//        break;
//    case 4:
//        ReturnValue(isNill: isNill, value: "4", display: display)
//        break;
//    case 5:
//        ReturnValue(isNill: isNill, value: "5", display: display)
//        break;
//    case 6:
//        ReturnValue(isNill: isNill, value: "6", display: display)
//        break;
//    case 7:
//        ReturnValue(isNill: isNill, value: "7", display: display)
//        break;
//    case 8:
//        ReturnValue(isNill: isNill, value: "8", display: display)
//        break;
//    case 9:
//        ReturnValue(isNill: isNill, value: "9", display: display)
//        break;
//    case 10: // AC
//        operation.CleanOperator()
//        CleanDisplay(display: display)
//        break;
//    case 11: // +-
//        // Not implemented
//        break;
//    case 12: // percert
//        // Not implemented
//        break;
//    case 13: // /
//        operation.SetPosValue(display: display, op: .division)
//        break;
//    case 14: //x
//        operation.SetPosValue(display: display, op: .multiplicacion)
//        break;
//    case 15: // -
//        operation.SetPosValue(display: display, op: .resta)
//        break;
//    case 16: // +
//        operation.SetPosValue(display: display, op: .suma)
//        break;
//    case 17: // =
//        operation.ExecOperation(display: display)
//        //ExecOperation(display: display)
//        break;
//    case 18: // .
//        if !DisContainDot(display: display) {
//            ReturnValue(isNill: isNill, value: "0.", display: display)
//        }
//        break;
//    default:
//        break;
//    }
//}
//TODO: CLASS DisplayFuntions
//Funtion to set the display value checking if have previous value
func ReturnValue(isNill: Bool, value: String, display: UITextField) {
    if isNill {
        display.text = value
    } else {
        display.text = (display.text ?? "") + value

    }
}
//TODO: CLASS DisplayFuntions
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
//TODO: CLASS DisplayFuntions
func CleanDisplay(display: UITextField){
    guard display.text != nil else { return }
    display.text = "0"
}
