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
    @IBOutlet weak var btnDecimals: UIButton!
    @IBOutlet weak var btnIgual: UIButton!
    @IBOutlet weak var btnMes: UIButton!
    @IBOutlet weak var btnMenos: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btbDividir: UIButton!
    @IBOutlet weak var btnTantPercent: UIButton!
    @IBOutlet weak var btnMasMenos: UIButton!
    @IBOutlet weak var lblDisplay: UITextField!
    
    private var display = "0"
    private var valor1 = "0"
    private var valor2 = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ActionDividir(_ sender: Any) {
    }
    @IBAction func ActionMultiplicar(_ sender: Any) {
    }
    @IBAction func ActionRestar(_ sender: Any) {
    }
    @IBAction func ActionSumar(_ sender: Any) {
    }
    @IBAction func ActionIgual(_ sender: Any) {
    }
    @IBAction func ActionDecimal(_ sender: Any) {
        //Todo: if first add, after 0 and only one
    }
    @IBAction func Action7(_ sender: Any) {
        AddDisplay(num: "7")
    }
    @IBAction func Action8(_ sender: Any) {
        AddDisplay(num: "8")
    }
    @IBAction func Action9(_ sender: Any) {
        AddDisplay(num: "9")
    }
    @IBAction func Action4(_ sender: Any) {
        AddDisplay(num: "4")
    }
    @IBAction func Action5(_ sender: Any) {
        AddDisplay(num: "5")
    }
    @IBAction func Action6(_ sender: Any) {
        AddDisplay(num: "6")
    }
    @IBAction func Action1(_ sender: Any) {
        AddDisplay(num: "1")
    }
    @IBAction func Action2(_ sender: Any) {
        AddDisplay(num: "2")
    }
    @IBAction func Action3(_ sender: Any) {
        AddDisplay(num: "3")
    }
    @IBAction func Action0(_ sender: Any) {
        if(CheckDisplay()){
            lblDisplay.text = display + "0"
            
        }
        display = lblDisplay.text!
    }
    //Check if have the initial value for add or not
    func CheckDisplay () ->Bool{
        if(display == "0"){
            return false
        }else{
            return true
        }
    }
    func AddDisplay(num : String){
        if(CheckDisplay()){
            lblDisplay.text = display + num
            
        }else{
            lblDisplay.text = num
        }
        display = lblDisplay.text!
    }
}

