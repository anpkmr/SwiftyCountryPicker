//
//  CountryPickerView.swift
//  Pods
//
//  Created by anoopkumar on 25/07/17.
//
//

import UIKit

public class CountryPickerView: UIPickerView,UIPickerViewDelegate,UIPickerViewDataSource  {
    var countryArray = [Country]()
    var currentSelectedRow  = 0
    var hideCountryCode: Bool? = nil
    var hideflg: Bool? = nil
    var hidecountrydialCode: Bool? = nil
    var hidecountryName: Bool? = nil

    public override func awakeFromNib(){
    super.awakeFromNib()
    }
    
   public func setCountryPickerView(hideflag:Bool = false,countryName:Bool = false,countryCode: Bool = false,countrydialCode:Bool = false){
        countryArray = CountryFlags.countryArray()
        hideCountryCode = countryCode
        hideflg = hideflag
        hidecountrydialCode = countrydialCode
        hidecountryName = countryName
        self.delegate = self
        self.dataSource = self
    }
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryArray.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let bundle = Bundle(for: self.classForCoder)
        let  pckrCellView   = (UINib(nibName: "CountryCellView", bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as! countryPickerViewCell)
        pckrCellView.setCountryCellData(countryObject: countryArray[row], flag: hideflg!, countryName: hidecountryName!, countryCode: hideCountryCode!, countrydialCode: hidecountrydialCode!)
        return pckrCellView
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentSelectedRow = row
    }
    
   public func getSelctedCountry (closure:((_ selectedCountry:Country)->Void)){
    guard countryArray == nil , countryArray.isEmpty == true else {
        closure(countryArray[currentSelectedRow])
        return
    }
    print("Counry Array is blank... Please check the file again for CallingCodes.Plist")
    
    }

}
