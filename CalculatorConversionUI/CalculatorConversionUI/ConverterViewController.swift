//
//  ConverterViewController.swift
//  CalculatorConversionUI
//
//  Created by Sam on 10/25/18.
//  Copyright © 2018 Sam. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func decimalButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += ".";
    }
    @IBAction func zeroButton(_ sender: UIButton) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "0";
    }
    @IBAction func oneButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "1";
    }
    @IBAction func twoButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "2";
    }
    @IBAction func threeButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "3";
    }
    @IBAction func fourButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "4";
    }
    @IBAction func fiveButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "5";
    }
    @IBAction func sixButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "6";
    }
    @IBAction func sevenButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "7";
    }
    @IBAction func eightButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "8";
    }
    @IBAction func nineButton(_ sender: Any) {
        if (converted == true) {
            inputDisplay.text! = "";
            converted = false
        }
        inputDisplay.text! += "9";
    }
    @IBAction func clearButton(_ sender: Any) {
        inputDisplay.text! = "";
    }
    @IBAction func negativePositiveButton(_ sender: Any) {
        inputDisplay.text! = String(Int(inputDisplay.text!)! * -1)
    }
    
    var conversions = ["fahrenheit to celcius","celcius to fahrenheit","miles to kilometers","kilometers to miles"]
    var converted: Bool = false
    
    struct fahrenheitToCelcius{
        var input: String
        
        func convert() -> Float{
            return ((Float(input)! - 32) * 5/9)
        }
    }
    
    @IBAction func converterButton(_ sender: Any) {
        let alert = UIAlertController(title: "Conversion Methods", message: "Choose!", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: conversions[0], style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if(self.converted == true){
                self.inputDisplay.text! = "0"
                self.converted = false
            }
            let amount: String? = String((Float(self.inputDisplay.text!)! - 32) * 5/9)
            self.outputDisplay.text = amount! + "C°"
            self.inputDisplay.text! += "F°"
            self.converted = true

        }))
        alert.addAction(UIAlertAction(title: conversions[1], style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if(self.converted == true){
                self.inputDisplay.text! = "0"
                self.converted = false
            }
            let amount: String? = String((Float(self.inputDisplay.text!)! * 9/5) + 32)
            self.outputDisplay.text = amount! + "F°"
            self.inputDisplay.text! += "C°"
            self.converted = true
            
        }))
        alert.addAction(UIAlertAction(title: conversions[2], style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if(self.converted == true){
                self.inputDisplay.text! = "0"
                self.converted = false
            }
            let amount: String? = String((Float(self.inputDisplay.text!)! * 1.609))
            self.outputDisplay.text = amount! + "km"
            self.inputDisplay.text! += "mi"
            self.converted = true
            
        }))
        alert.addAction(UIAlertAction(title: conversions[3], style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if(self.converted == true){
                self.inputDisplay.text! = "0"
                self.converted = false
            }
            let amount: String? = String((Float(self.inputDisplay.text!)! / 1.609))
            self.outputDisplay.text = amount! + "mi"
            self.inputDisplay.text! += "km"
            self.converted = true
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    /*@IBAction func Convert(_ sender: Any) {
        //fahrenheitToCelcius(input: inputDisplay.text!)
        outputDisplay.text = String(fahrenheitToCelcius.convert(ConverterViewController.fahrenheitToCelcius)())
    }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
