//
//  GameScene.swift
//  Crushed
//
//  Created by Pavlo Fedyna on 28.05.18.
//  Copyright © 2018 Pavlo Fedyna. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameModel = CrushedModel()
    
    func setup() {
        self.gameModel.myGameScene = self
        self.gameModel.setupModel()
        self.gameModel.populateModel()
        self.arrangeTiles()
    }
    
    
    override func didMove(to view: SKView) {
        self.setup()
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func setupSprite(_ withImage:Int) -> CrushTile {
        
        let sprite = CrushTile(imageNamed:"jewel_"+String(withImage))
        
        sprite.tileType = withImage
        sprite.xScale = 2
        sprite.yScale = 2
        
        self.addChild(sprite)
        
        
        return sprite
    }
    
    func arrangeTiles() {
        
        var location = CGPoint(x: 50,y: 350)
        
        var i = 0
        for verticalStrip in self.gameModel.TwoDArray {
            
            var verticalCounter = 1
            
            for gameTile in verticalStrip {
                
                let convertedLocation = self.convertPoint(fromView: location )
                
                
                gameTile.run(
                    SKAction.move(to: convertedLocation, duration: 0.1 * Double(verticalCounter))
                )
                location.y -= 30
                
                
                gameTile.outerIndex = i
                
                verticalCounter += 1
            }
            
            location.x += 25
            location.y = 350
            
            i += 1
            
        }

    }

    
}
