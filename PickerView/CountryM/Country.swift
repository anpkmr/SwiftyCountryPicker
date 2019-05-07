//
//  Country.swift
//  CountryPIckerinSwift
//
//  Created by anoopkumar on 17/05/17.
//  Copyright © 2017 anoopkumar. All rights reserved.
//

import Foundation
public class Country:NSObject {
    var countryCode: String? = nil
    var countryName:String? = nil
    var countryImage:String? = nil
    var phoneCode:String? = nil
    public override init() {
        super.init()
    }
}
