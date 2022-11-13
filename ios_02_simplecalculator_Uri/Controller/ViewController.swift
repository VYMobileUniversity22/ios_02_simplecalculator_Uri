//
//  ViewController.swift
//  ios_02_simplecalculator_Uri
//
//  Created by josepL on 8/11/22.
//

import UIKit

class ViewController: UIViewController {
    

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

