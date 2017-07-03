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
    var finalOuncesToPounds = 0.0
    var finalPintsToCups = 0.0
    var finalGallonsToQuarts = 0.0
    var finalTablespoonsToTeaspoons = 0.0
    var finalCupsToQuarts = 0.0
    var finalCupsToGallons = 0.0
    var finalTablespoonsToCups = 0.0
    @IBOutlet weak var enteredCups: UITextField!
    @IBOutlet weak var cupsUSTextField: UILabel!
    @IBOutlet weak var enteredOunces: UITextField!
    @IBOutlet weak var ouncesUSTextField: UILabel!
    @IBOutlet weak var enteredQuarts: UITextField!
    @IBOutlet weak var quartsUSTextField: UILabel!
    @IBOutlet weak var enteredTeaspoons: UITextField!
    @IBOutlet weak var TeaspoonsUSTextField: UILabel!
    @IBOutlet weak var enteredOunces2: UITextField!
    @IBOutlet weak var Ounces2USTextField: UILabel!
    @IBOutlet weak var enteredPints: UITextField!
    @IBOutlet weak var PintsUSTextField: UILabel!
    @IBOutlet weak var enteredGallons: UITextField!
    @IBOutlet weak var GallonsUSTextField: UILabel!
    @IBOutlet weak var enteredTablespoons: UITextField!
    @IBOutlet weak var TablespoonsUSTextField: UILabel!
    @IBOutlet weak var enteredCups2: UITextField!
    @IBOutlet weak var Cups2USTextField: UILabel!
    @IBOutlet weak var enteredCups3: UITextField!
    @IBOutlet weak var Cups3USTextField: UILabel!
    @IBOutlet weak var enteredTablespoons2: UITextField!
    @IBOutlet weak var Tablespoons2USTextField: UILabel!
    
    
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
    func convertOuncesToPounds(){
        if(enteredOunces2.text?.characters.count)! >= 1 {
            finalOuncesToPounds = Double(enteredOunces2.text!)! / 16.0
            finalOuncesToPounds = round(finalOuncesToPounds*100)/100
            
        }
    }
    func convertPintsToCups(){
        if(enteredPints.text?.characters.count)! >= 1{
            finalPintsToCups = Double(enteredPints.text!)! * 2.0
            finalPintsToCups = round(finalPintsToCups*100)/100
        }
    }
    func convertGallonsToQuarts(){
        if(enteredGallons.text?.characters.count)! >= 1{
            finalGallonsToQuarts = Double(enteredGallons.text!)! * 4.0
            finalGallonsToQuarts = round(finalGallonsToQuarts*100)/100
        }
    }
    func convertTablespoonsToTeaspoons(){
        if(enteredTablespoons.text?.characters.count)! >= 1{
            finalTablespoonsToTeaspoons = Double(enteredTablespoons.text!)! * 3.0
            finalTablespoonsToTeaspoons = round(finalTablespoonsToTeaspoons*100)/100
        }
    }
    func convertCupsToQuarts(){
        if(enteredCups2.text?.characters.count)! >= 1{
            finalCupsToQuarts = Double(enteredCups2.text!)! / 4.0
            finalCupsToQuarts = round(finalCupsToQuarts*100)/100
        }
    }
    func convertCupsToGallons(){
        if(enteredCups3.text?.characters.count)! >= 1{
            finalCupsToGallons = Double(enteredCups3.text!)! / 16.0
            finalCupsToGallons = round(finalCupsToGallons*100)/100
        }
    }
    func convertTablespoonsToCups(){
        if(enteredTablespoons2.text?.characters.count)! >= 1{
            finalTablespoonsToCups = Double(enteredTablespoons2.text!)! / 16.0
            finalTablespoonsToCups = round(finalTablespoonsToCups*100)/100
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func onCalculateCupsToTBSTapped(_ sender: Any) {
        convertCupsToTBS()
        cupsUSTextField.text = String(finalCupstoTBS) + " tbsp"
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
        TeaspoonsUSTextField.text = String(finalTeaspoonsToTablespoons) + " tbsp"
    }
   
    @IBAction func convertOuncesToPounds(_ sender: Any) {
        convertOuncesToPounds()
        Ounces2USTextField.text = String(finalOuncesToPounds) + " lbs"
    }
    @IBAction func convertPintsToCups(_ sender: Any) {
        convertPintsToCups()
        PintsUSTextField.text = String(finalPintsToCups) + " cups"
    }
    @IBAction func onCalculateGallonsToQuartsTapped(_ sender: Any) {
        convertGallonsToQuarts()
        GallonsUSTextField.text = String(finalGallonsToQuarts) + " quarts"
    }
    @IBAction func OnCalculateTablespoonsToTeaspoons(_ sender: Any) {
        convertTablespoonsToTeaspoons()
        TablespoonsUSTextField.text = String(finalTablespoonsToTeaspoons) + " tps"
    }
    @IBAction func onCalculateCupsToQuartsTapped(_ sender: Any) {
        convertCupsToQuarts()
        Cups2USTextField.text = String(finalCupsToQuarts) + " quarts"
    }
    @IBAction func onCalculateCupsToGallonsTapped(_ sender: Any) {
        convertCupsToGallons()
        Cups3USTextField.text = String(finalCupsToGallons) + " gallons"
    }
    @IBAction func onCalculateTablespoonsToCupsTapped(_ sender: Any) {
        convertTablespoonsToCups()
        Tablespoons2USTextField.text = String(finalTablespoonsToCups) + " cups"
    }
    }

    

