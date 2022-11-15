//
//  CDisplay.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 14/11/22.
//

import Foundation
import UIKit

struct CDisplay{
    func CheckDisplayCero (display: UILabel) -> Bool {
        if(display.text == "0") {
            return false
        } else {
            return true
        }
    }
    func ReturnValue(isNill: Bool, value: String, display: UITextField) {
        if isNill {
            display.text = value
        } else {
            display.text = (display.text ?? "") + value

        }
    }
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
    func CleanDisplay(display: UITextField){
        guard display.text != nil else { return }
        display.text = "0"
    }
}
