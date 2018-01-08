//
//  ViewController.swift
//  ExampleFloatingKeyPad
//
//  Created by Sharon on 05/01/18.
//  Copyright © 2018 Sharon. All rights reserved.
//

import UIKit
import ILSFloatingKeyPad

class ViewController: UIViewController,UITextFieldDelegate {

    //IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var PhoneNumberTextField: UITextField!
    @IBOutlet weak var amountRToPayTextField: UITextField!
    
 
    var keyPad : ILSFloatingKeyPad!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Textfield Delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        
     
        if textField == ageTextField {
         keyPad = ILSFloatingKeyPad(frameOfNumberPad: CGSize(width: 200, height: 200), texField: textField, numberPadType: NumberPadType.NumericPad,ButtonbackgroundColor:nil,KeyPadborderColor:nil,ButtonTitleColor:nil)
        }
       else if textField == PhoneNumberTextField{
             keyPad = ILSFloatingKeyPad(frameOfNumberPad: CGSize(width: 200, height: 200), texField: textField, numberPadType: NumberPadType.NumberPad,ButtonbackgroundColor:nil,KeyPadborderColor:nil,ButtonTitleColor:nil)
        }
        else if textField == amountRToPayTextField{
            keyPad = ILSFloatingKeyPad(frameOfNumberPad: CGSize(width: 200, height: 200), texField: textField, numberPadType: NumberPadType.NumericPad,ButtonbackgroundColor:UIColor.lightText,KeyPadborderColor:UIColor.black,ButtonTitleColor:UIColor.white)
        }
        else if textField == nameTextField{
          print("normal keypad")
        }
        else
        {
          keyPad = ILSFloatingKeyPad(frameOfNumberPad: CGSize(width: 200, height: 200), texField: textField, numberPadType: NumberPadType.NumericPad,ButtonbackgroundColor:UIColor.red,KeyPadborderColor:nil,ButtonTitleColor:UIColor.white)
        }

        
        return true
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
        
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField .resignFirstResponder()
        return true
    }
    
    
}

