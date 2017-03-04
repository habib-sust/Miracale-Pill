//
//  ViewController.swift
//  MiracalePills
//
//  Created by Habibur Rahman on 3/4/17.
//  Copyright © 2017 Habibur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let states = ["Dhaka","Sylhet","Chittagong","Rajshahi","Khulna","Barisal"]
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillPriceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    @IBOutlet weak var pillLabel: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowButton.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal)
        
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
        buyNowButton.isHidden = false
    }

    @IBAction func buyNowButtonPressed(_ sender: Any) {
        
        successImage.isHidden = false
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowButton.isHidden = true
        pillImage.isHidden = true
        pillLabel.isHidden = true
        pillPriceLabel.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        streetLabel.isHidden = true
        streetTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        stateButton.isHidden = true
        
        dividerView.isHidden = true
        
        
        
    }
}

