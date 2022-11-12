//
//  ViewController.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 8/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btnDividir: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btnDecimals: UIButton!
    @IBOutlet weak var btnIgual: UIButton!
    @IBOutlet weak var btnMes: UIButton!
    @IBOutlet weak var btnMenos: UIButton!
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btnTantPercent: UIButton!
    @IBOutlet weak var btnMasMenos: UIButton!
    @IBOutlet weak var lblDisplay: UITextField!
    
    //var for know if the calculator allready have any value
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //btnDecimals.isHidden = defaults.bool(forKey: "decimalsEnabled")     //Hide decimal button by user settings
        //lblDisplay.text = defaults.string(forKey: "LastResult")             //Display last results
    }
//TODO: - setLastResult
    
    @IBAction func btnPress(_ sender: UIButton) {
        CheckIniDisplay(display: lblDisplay, btnPress: sender)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

