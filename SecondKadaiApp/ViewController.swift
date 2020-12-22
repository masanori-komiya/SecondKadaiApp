//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 小宮聖智 on 2020/12/22.
//  Copyright © 2020 masanori.komiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = textField.text!
        textField.text! = ""
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
}

