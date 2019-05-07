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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.setCountryPickerView(hideflag: false, countryName: true, countryCode: true, countrydialCode: true)
        pickerView.getSelctedCountry { (data) in
            print("County is ===\(data)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

