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
    
    private var display = "0"
    private var valor1: Double?
    private var valor2: Double?
    private var result: Double?
    //var for know if the calculator allready have any value
    private var statusInit = false
    private var currentOp = ""
    private var currentVar = "val1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ActionAC(_ sender: Any) {
        CleanAll()
    }
    @IBAction func ActionRestar(_ sender: Any) {
        Operacio(op: "-")
    }
    @IBAction func ActionSumar(_ sender: Any) {
        Operacio(op: "+")
    }
    @IBAction func ActionDividir(_ sender: Any) {
        Operacio(op: "/")
    }
    @IBAction func ActionMultiply(_ sender: Any) {
        Operacio(op: "X")
    }
    @IBAction func ActionIgual(_ sender: Any) {
        Operacio(op: "=")
    }
    @IBAction func ActionDecimal(_ sender: Any) {
        if(!CheckDisplay()){
            lblDisplay.text = "0."
            display = "0."
        }else if(!(lblDisplay.text?.contains("."))!){
            lblDisplay.text = display + "."
            display = lblDisplay.text!
        }
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
        statusInit = true
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
            //adding previous value of display to label
            lblDisplay.text = display + num
        }else{
            lblDisplay.text = num
        }
        display = lblDisplay.text!
        statusInit = true
    }
    fileprivate func CheckIfFirstValue(_ op: String?) {
        //Case firstOperation
        if(currentVar == "val1"){
            valor1 = Double(lblDisplay.text!)
            currentOp = op!
            currentVar = "val2"
            display = "0"
            lblDisplay.text = display
        }else{ //if val2
//            valor2 = Double(lblDisplay.text!)
//            lblDisplay.text = Operar(op: currentOp)
//            result = Double (Operar(op: currentOp))
//            valor2 = nil
        }
    }
    
    func Operacio (op:String?){
        if(statusInit){
            switch op{
                case "+":
                CheckIfFirstValue(op)
                    break
                case "-":
                CheckIfFirstValue(op)
                    break
                case "/":
                CheckIfFirstValue(op)
                    break
                case "X":
                CheckIfFirstValue(op)
                    break
                case "=":
                //Todo o switch o captuturar el tipus d'operacio
                    valor2=Double(lblDisplay.text!)
                    result = Double(Operar(op: currentOp))
                    lblDisplay.text = String(result!)
                    //CleanAll()
                    currentVar = "var1"
                    break
                default:
                    break
            }
        }else{
            //Todo: Alert no value
            print("No initial value")
        }
    }
    func Operar(op:String)->String{

        switch op{
            case "+":
            result = valor1 + valor2!
                break
            case "-":
            result = valor1! - valor2!
                break
            case "/":
            result = valor1! / valor2!
                break
            case "X":
            result = valor1! * valor2!
                break
            default:
                break
        }
        return String(result!)
    }
    fileprivate func CleanAll() {
        display = "0"
        lblDisplay.text = ""
        valor1 = 0.0
        valor2 = 0.0
        result = 0.0
        currentVar = "var1"
    }
}

