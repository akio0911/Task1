//
//  ViewController.swift
//  Task1
//
//  Created by 鈴木秀一郎 on 2021/05/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var resultInt: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calcButtonAction(_ sender: UIButton) {
        
        let TextFieldArray: [UITextField] = [textField1, textField2, textField3, textField4, textField5]
        
        let IntArray = TextFieldArray
            .map { $0.text ?? "" }
            .map { Int($0) ?? 0 }
        
        for item in IntArray {
            resultInt += item
        }
        
        resultLabel.text = String(resultInt)
        resultInt = 0
        
    }
    
    
    
}



