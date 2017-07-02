//
//  thirdViewController.swift
//  Cooking Conversions
//
//  Created by Brian Browdy on 7/1/17.
//  Copyright © 2017 Lily Browdy. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    var finalCupstoTBS = 0.0
    var finalOuncesToCups = 0.0
    var finalQuartsToCups = 0.0
    var finalTeaspoonsToTablespoons = 0.0
    @IBOutlet weak var enteredCups: UITextField!
    @IBOutlet weak var cupsUSTextField: UILabel!
    @IBOutlet weak var enteredOunces: UITextField!
    @IBOutlet weak var ouncesUSTextField: UILabel!
    @IBOutlet weak var enteredQuarts: UITextField!
    @IBOutlet weak var quartsUSTextField: UILabel!
    @IBOutlet weak var enteredTeaspoons: UITextField!
    @IBOutlet weak var TeaspoonsUSTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap2: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        tap2.cancelsTouchesInView = false
        view.addGestureRecognizer(tap2)
        
    }
    func dismissKeyboard(){
        view.endEditing(true)
    }
    func convertCupsToTBS(){
        if(enteredCups.text?.characters.count)! >= 1{
            finalCupstoTBS = Double(enteredCups.text!)! * 16.0
            finalCupstoTBS = round(finalCupstoTBS*100)/100
        }
    }
    func convertOuncesToCups(){
        if(enteredOunces.text?.characters.count)! >= 1{
            finalOuncesToCups = Double(enteredOunces.text!)! / 8.0
            finalOuncesToCups = round(finalOuncesToCups*100)/100
        }
    }
    func convertQuartsToCups(){
        if(enteredQuarts.text?.characters.count)! >= 1{
            finalQuartsToCups = Double(enteredQuarts.text!)! * 4.0
            finalQuartsToCups = round(finalQuartsToCups*100)/100
        }
    }
    func convertTeaspoonsToTablespoons(){
        if(enteredTeaspoons.text?.characters.count)! >= 1 {
            finalTeaspoonsToTablespoons = Double(enteredTeaspoons.text!)! / 3.0
            finalTeaspoonsToTablespoons = round(finalTeaspoonsToTablespoons*100)/100
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func onCalculateCupsToTBSTapped(_ sender: Any) {
        convertCupsToTBS()
        cupsUSTextField.text = String(finalCupstoTBS) + " tbs"
    }

    @IBAction func onCalculateOuncesToCupsTapped(_ sender: Any) {
        convertOuncesToCups()
        ouncesUSTextField.text = String(finalOuncesToCups) + " cups"
    }
    
    @IBAction func onCalculateQuartsToCupsTapped(_ sender: Any) {
        convertQuartsToCups()
        quartsUSTextField.text = String(finalQuartsToCups) + " cups"
    }
    @IBAction func onCalculateTeaspoonsToTablespoonsTapped(_ sender: Any) {
        convertTeaspoonsToTablespoons()
        TeaspoonsUSTextField.text = String(finalTeaspoonsToTablespoons) + " tbs"
    }
   
}
