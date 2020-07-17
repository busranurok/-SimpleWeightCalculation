//
//  ViewController.swift
//  ProblemApp
//
//  Created by Yeni Kullanıcı on 17.07.2020.
//  Copyright © 2020 Busra Nur OK. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var buttonClicked: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func textFieldChange(_ sender: Any) {
        
        var t=textField.text!
        
        if t.rangeOfCharacter(from: NSCharacterSet.decimalDigits) == nil
        {
            textField.text = nil
            
            let alert = UIAlertController(title: "Warning!", message: "Please, input a number.", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }

    
    @IBAction func buttonClicked(_ sender: Any) {
        
        let nmbr : Int! = Int(textField.text!)
        let rslt = calculate(num: nmbr)
        
        if rslt! > 50 {
            resultLabel.text = String("you are fat!")
        } else {
            resultLabel.text = String("your weight is ideal.")
        }
        
        
    }
    
    
    func calculate(num: Int!) -> Int!{
        return num * 10
    }
    
   
}

