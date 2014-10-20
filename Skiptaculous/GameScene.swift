//
//  GameScene.swift
//  Skiptaculous
//
//  Created by Orion Chang on 10/21/14.
//  Copyright (c) 2014 Orion. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let playButton = SKSpriteNode(imageNamed: "play")
    
    override func didMoveToView(view: SKView) {
        self.playButton.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(playButton)
        self.backgroundColor = UIColor(hex: 0x80d9ff)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            if self.nodeAtPoint(location) == self.playButton {

                var playScene = PlayScene(size: self.size)
                let skView = self.view!
                skView.ignoresSiblingOrder = true
                playScene.scaleMode = .ResizeFill
                playScene.size = skView.bounds.size
                skView.presentScene(playScene)
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
