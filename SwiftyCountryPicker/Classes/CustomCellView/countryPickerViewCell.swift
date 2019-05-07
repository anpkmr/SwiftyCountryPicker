//
//  countryPickerViewCell.swift
//  CountryPIckerinSwift
//
//  Created by anoopkumar on 17/05/17.
//  Copyright © 2017 anoopkumar. All rights reserved.
//

import UIKit

public class countryPickerViewCell: UIView {
    @IBOutlet weak var  lblCountryInital: UILabel!
    @IBOutlet weak var  lblCountyImage: UILabel!
    @IBOutlet weak var  lblCountryCode: UILabel!
    @IBOutlet weak var lblPhoneCode: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
  public func  setCountryCellData(countryObject:Country,flag:Bool ,countryName:Bool ,countryCode: Bool ,countrydialCode:Bool){
    lblCountryInital.isHidden = countryName
    lblCountyImage.isHidden = flag
    lblCountryCode.isHidden = countryCode
    lblPhoneCode.isHidden = countrydialCode
    lblCountryInital.adjustsFontSizeToFitWidth = true
    lblCountryInital.text = countryObject.countryName
    lblCountryCode.text = countryObject.countryCode
    lblCountyImage.text = countryObject.countryImage
    lblPhoneCode.text = countryObject.phoneCode
    }

}
