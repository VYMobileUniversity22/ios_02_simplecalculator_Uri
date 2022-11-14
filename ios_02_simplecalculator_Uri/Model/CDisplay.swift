//
//  CDisplay.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 14/11/22.
//

import Foundation
import UIKit

class CDisplay{
    func CheckDisplayCero (display: UILabel) -> Bool {
        if(display.text == "0") {
            return false
        } else {
            return true
        }
    }
}
