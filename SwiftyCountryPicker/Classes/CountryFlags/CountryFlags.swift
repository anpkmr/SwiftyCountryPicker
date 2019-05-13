//
//  CountryFlags.swift
//  CountryPIckerinSwift
//
//  Created by anoopkumar on 16/05/17.
//  Copyright © 2017 anoopkumar. All rights reserved.
//

import Foundation

public class CountryFlags {
  static  var path:String? = nil
  static  var array:Array<Any>? = nil
    public class func flag(country:String) -> String {
        let base = 127397
        var usv = String.UnicodeScalarView()
        for i in country.utf16 {
            usv.append(UnicodeScalar(base + Int(i))!)
        }
        return String(usv)
    }
    
   public class func countryArray() -> Array<Country> {
        var customCountryArray = [Country]()
        let podBundle = Bundle(for: self)
        path = podBundle.path(forResource: "CallingCodes", ofType: "plist")
        print("Country info plist paht ==== \(String(describing: CountryFlags.path)))")
        if path != nil {
        array = NSArray(contentsOfFile: path!) as! Array<Any>?
        for contr in NSLocale.isoCountryCodes {
            let countryObj  = Country()
            countryObj.countryCode = contr
            countryObj.countryImage = flag(country: countryObj.countryCode!)
            countryObj.countryName =  countryName(from: contr)
            countryObj.phoneCode = getCountryDialCodeFor(countryCode: contr)
            customCountryArray.append(countryObj)
            
        }
        }else {
            print("Could not find the path file")
        }
        return customCountryArray
    }
    
  public  class func countryName(from countryCode: String) -> String {
        if let name = (Locale.current as NSLocale).displayName(forKey: .countryCode, value: countryCode) {
            // Country name was found
            return name
        } else {
            // Country name cannot be found
            return countryCode
        }
    }
  public  class func getCountryDialCodeFor(countryCode:String)->String{
        var cPhoneCode:String? = nil
        let k = CountryFlags.array
        let index = k?.index {
            if let dic = $0 as? Dictionary<String,AnyObject> {
                if let value = dic["code"]  as? String, value == countryCode{
                    return true
                }
            }
            return false
        }
        guard index != nil else {
            return "no data"
        }
        cPhoneCode =   (k?[index!] as! Dictionary<String,Any>)["dial_code"] as? String
        return cPhoneCode!
    }
    
}
