//
//  secondViewController.swift
//  Cooking Conversions
//
//  Created by Brian Browdy on 6/30/17.
//  Copyright © 2017 Lily Browdy. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
var finalTeaspoonsMetric = 0.0
    var finalTablespoonsMetric = 0.0
    
    @IBOutlet weak var enteredTeaspoons: UITextField!
    @IBOutlet weak var TeaspoonsMLTextField: UILabel!
    @IBOutlet weak var enteredTablespoons: UITextField!
    @IBOutlet weak var TablespoonsMLTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func convertTableSpoons() {
        if(enteredTablespoons.text?.characters.count)! >= 1 {
            finalTablespoonsMetric = Double(enteredTablespoons.text!)! * 15
        }
    }
    
    func convertTeaSpoons() {
        if (enteredTeaspoons.text?.characters.count)! >= 1 {
        finalTeaspoonsMetric = Double(enteredTeaspoons.text!)! * 5.0
    }
       
        
    }

    @IBAction func onCalculateTapped(_ sender: Any) {
        convertTeaSpoons()
        TeaspoonsMLTextField.text! =  String(finalTeaspoonsMetric) + " ml"
        //maybe switch order so it says #ml
    }

    @IBAction func onTablespoonsCalculateTapped(_ sender: Any) {
        convertTableSpoons()
        TablespoonsMLTextField.text! = String(finalTablespoonsMetric) + " ml"
    }
    
   
}
