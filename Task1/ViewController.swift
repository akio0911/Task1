//
//  ViewController.swift
//  Task1
//
//  Created by 鈴木秀一郎 on 2021/05/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction func calcButtonAction(_ sender: UIButton) {
        let textFieldArray: [UITextField] = [textField1, textField2, textField3, textField4, textField5]
        
        let intArray = textFieldArray
            .map { $0.text ?? "" }
            .map { Int($0) ?? 0 }
        
        var resultInt: Int = 0
        for item in intArray {
            resultInt += item
        }
        
        resultLabel.text = String(resultInt)
    }
}
