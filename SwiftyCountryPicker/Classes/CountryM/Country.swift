//
//  Country.swift
//  CountryPIckerinSwift
//
//  Created by anoopkumar on 17/05/17.
//  Copyright © 2017 anoopkumar. All rights reserved.
//

import Foundation
public class Country:NSObject {
   public var countryCode: String? = nil
   public var countryName:String? = nil
   public var countryImage:String? = nil
   public var phoneCode:String? = nil
   public override init() {
        super.init()
    }
}
