//
//  CrushedModel.swift
//  Crushed
//
//  Created by Pavlo Fedyna on 28.05.18.
//  Copyright © 2018 Pavlo Fedyna. All rights reserved.
//

import UIKit

class CrushedModel: Any {
    var TwoDArray = [[CrushTile]]()
    
    weak var myGameScene : GameScene!
    

    
    func setupModel() {
        var i = 0
        while(i < 10) {
            let newArray = [CrushTile]()
            self.TwoDArray.append(newArray)
            i += 1
        }
    }
    
    func populateModel() {
        var i = 0
        while (i < 10) {
            while (self.TwoDArray[i].count < 10) {
                let dice = CrushUtils.randomNumberBetweenOneAndSix()
                let CrushTile =  self.myGameScene.setupSprite(dice)
                CrushTile.outerIndex = i
                self.TwoDArray[i].append(CrushTile)
            }
            i += 1
        }

    }
}
