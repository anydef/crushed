//
//  CrushUtils.swift
//  Crushed
//
//  Created by Pavlo Fedyna on 28.05.18.
//  Copyright © 2018 Pavlo Fedyna. All rights reserved.
//

import UIKit

class CrushUtils: Any {
    class func randomNumberBetweenOneAndSix() -> Int {
        return Int(arc4random_uniform(UInt32(5))) + 1
    }
}
