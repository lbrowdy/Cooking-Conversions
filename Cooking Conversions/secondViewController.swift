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
    var finalOuncesMetric = 0.0
    var finalFluidOuncesMetric = 0.0
    var finalCupsMetric = 0.0
    var finalPintsMetric = 0.0
    var finalQuartsMetric = 0.0
    var finalGallonsMetric = 0.0
    var finalPoundsMetric = 0.0
    //should I make an array because i need 5 coding concepts?
    @IBOutlet weak var enteredTeaspoons: UITextField!
    @IBOutlet weak var TeaspoonsMLTextField: UILabel!
    @IBOutlet weak var enteredTablespoons: UITextField!
    @IBOutlet weak var TablespoonsMLTextField: UILabel!
    @IBOutlet weak var enteredOunces: UITextField!
    @IBOutlet weak var OuncesMLTextField: UILabel!
    @IBOutlet weak var enteredFluidOunces: UITextField!
    @IBOutlet weak var FluidOuncesMLTextField: UILabel!
    @IBOutlet weak var enteredCups: UITextField!
    @IBOutlet weak var CupsMLTextField: UILabel!
    @IBOutlet weak var enteredPints: UITextField!
    @IBOutlet weak var PintsMLTextField: UILabel!
    @IBOutlet weak var enteredQuarts: UITextField!
    @IBOutlet weak var QuartsMLTextField: UILabel!
    @IBOutlet weak var enteredGallons: UITextField!
    @IBOutlet weak var GallonsMLTextField: UILabel!
    @IBOutlet weak var enteredPounds: UITextField!
    @IBOutlet weak var PoundsMLTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard (){
        view.endEditing(true)
    }
    func convertFluidOunces(){
        if(enteredFluidOunces.text?.characters.count)! >= 1{
            finalFluidOuncesMetric = Double(enteredFluidOunces.text!)! * 30
            finalFluidOuncesMetric = round(finalFluidOuncesMetric*100)/100
        }
        
    }
    func convertTablespoons (){
        if (enteredTablespoons.text?.characters.count)! >= 1 {
            finalTablespoonsMetric = Double(enteredTablespoons.text!)! * 15
            finalTablespoonsMetric = round(finalTablespoonsMetric*100)/100
        }
    }
    func convertOunces(){
        if(enteredOunces.text?.characters.count)! >= 1{
            finalOuncesMetric = Double(enteredOunces.text!)! * 28
            finalOuncesMetric = round(finalOuncesMetric*100)/100
        }
        
    }
    
    
    func convertTeaspoons() {
        if (enteredTeaspoons.text?.characters.count)! >= 1 {
            finalTeaspoonsMetric = Double(enteredTeaspoons.text!)! * 5.0
            finalTeaspoonsMetric = round(finalTeaspoonsMetric*100)/100

        }
        
    }
    func convertCups(){
        if(enteredCups.text?.characters.count)! >= 1{
            finalCupsMetric = Double(enteredCups.text!)! * 240.0
            finalCupsMetric = round(finalCupsMetric*100)/100
        }
        
    }
    func convertPints(){
        if(enteredPints.text?.characters.count)! >= 1{
            finalPintsMetric = Double(enteredPints.text!)! * 273.0
            finalPintsMetric = round(finalPintsMetric*100)/100
        }
    }
    func convertQuarts(){
        if(enteredQuarts.text?.characters.count)! >= 1{
            finalQuartsMetric = Double(enteredQuarts.text!)! * 0.95
            finalQuartsMetric = round(finalQuartsMetric*100)/100
        }
    }
    func convertGallons(){
        if(enteredGallons.text?.characters.count)! >= 1{
            finalGallonsMetric = Double(enteredGallons.text!)! * 3.8
            finalGallonsMetric = round(finalGallonsMetric*100)/100
        }
    }
    func convertPounds(){
        if(enteredPounds.text?.characters.count)! >= 1 {
            finalPoundsMetric = Double(enteredPounds.text!)! * 454
            finalPoundsMetric = round(finalPoundsMetric*100)/100
        }
    }
    
    @IBAction func onCalculateTapped(_ sender: Any) {
        convertTeaspoons()
        TeaspoonsMLTextField.text! =  String(finalTeaspoonsMetric) + " millileters"
        //maybe switch order so it says #ml
    }
    
    @IBAction func onTablespoonsCalculateTapped(_ sender: Any) {
        convertTablespoons()
        TablespoonsMLTextField.text! = String(finalTablespoonsMetric) + " millileters"
    }
    
    @IBAction func onOuncesCalculateTapped(_ sender: Any) {
        convertOunces()
        OuncesMLTextField.text! = String(finalOuncesMetric) + " grams"
        
    }
    
    @IBAction func onFluidOuncesCalculateTapped(_ sender: Any) {
        convertFluidOunces()
        FluidOuncesMLTextField.text! = String(finalFluidOuncesMetric) + " millileters"
    }
    
    @IBAction func onCupsCalculateTapped(_ sender: Any) {
        convertCups()
        CupsMLTextField.text! = String(finalCupsMetric) + " millileters"
    }
    @IBAction func onPintsCalculateTapped(_ sender: Any) {
        convertPints()
        PintsMLTextField.text = String(finalPintsMetric) + " millileters"
    }
    
    @IBAction func onQuartsCalculateTapped(_ sender: Any) {
        convertQuarts()
        QuartsMLTextField.text = String(finalQuartsMetric) + " liters"
    }
    @IBAction func onGallonsCalculateTapped(_ sender: Any) {
        convertGallons()
        GallonsMLTextField.text = String(finalGallonsMetric) + " liters"
    }
    
    @IBAction func onPoundsCalculateTapped(_ sender: Any) {
        convertPounds()
        PoundsMLTextField.text = String(finalPoundsMetric) + " grams"
    }
    
}
