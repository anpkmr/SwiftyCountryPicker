//
//  ViewController.swift
//  SwiftyCountryPicker
//
//  Created by anoopkumarevontech on 05/03/2019.
//  Copyright (c) 2019 anoopkumarevontech. All rights reserved.
//

import UIKit
import SwiftyCountryPicker

class ViewController: UIViewController {
    
    @IBOutlet weak var pickerView:CountryPickerView!
    @IBOutlet weak var labelCountryInfo:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.setCountryPickerView(hideflag: false, countryName: false, countryCode: false, countrydialCode: false)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttnDoneTapped(_ sender:Any) {
        pickerView.getSelctedCountry { (data) in
            self.labelCountryInfo.text = """
            Country Info is:-
            Name = \(String(describing: data.countryName!))
            Code = \(String(describing:data.countryCode!))
            phoneCode = \(String(describing: data.phoneCode!))
            """
        }
        
    }
    
    @IBAction func buttnCancelTapped(_ sender:Any) {
        labelCountryInfo.text = nil
    }
    
}

