//
//  ViewController.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 8/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplay: UITextField!
    var operate = COperation()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnPress(_ sender: UIButton) {
        operate.CheckIniDisplay(display: lblDisplay, btnPress: sender)
        //CheckIniDisplay(display: lblDisplay, btnPress: sender)
    }
}

