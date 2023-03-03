//
//  GameScene.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 18/05/2022.
//

import SpriteKit

class GameScene : SKScene, SKPhysicsContactDelegate{

    public let player = SKSpriteNode(imageNamed: "donkey.png") // game object to be controlled by the user
    public let lion = SKSpriteNode(imageNamed: "elephant.png")
    public let vole = SKSpriteNode(imageNamed: "vole.png")
    
    let playerCategory:UInt32 = 0x1 << 0 // for collision detection
    let otherAnimalCategory:UInt32 = 0x1 << 1 // for collision detection
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: -9.8) // gravity
        
        backgroundColor = SKColor.cyan // background colour
        
                    //player
        player.position = CGPoint(x: size.width / 2, y: size.height * 0.1)
        player.size = CGSize(width: 60, height: 60)
        player.physicsBody?.categoryBitMask = playerCategory // define collision detection category
        player.physicsBody?.contactTestBitMask = otherAnimalCategory
        player.physicsBody = SKPhysicsBody(rectangleOf: player.frame.size)
        player.physicsBody?.isDynamic = false
        
        addChild(player)
        
                    // lion
        lion.position = CGPoint(x: size.width / 2, y: size.height * 0.3)
        lion.size = CGSize(width: 60, height: 60)
        lion.physicsBody?.categoryBitMask = otherAnimalCategory
        lion.physicsBody?.contactTestBitMask = playerCategory | otherAnimalCategory
        lion.physicsBody = SKPhysicsBody(rectangleOf: lion.frame.size)
        lion.physicsBody?.isDynamic = true

        addChild(lion)

        let action1 = SKAction.move(to: CGPoint(x: size.width*0.1, y: size.height*0.8), duration: 0)
        let action2 = SKAction.move(to: CGPoint(x: size.width*0.9, y: size.height*0.8), duration: 2)
        let sequence = SKAction.sequence([action1, action2])
        lion.run(SKAction.repeatForever(sequence))
        
                    // vole
        vole.position = CGPoint(x: size.width / 2, y: size.height * 0.5)
        vole.size = CGSize(width: 60, height: 60)
        vole.physicsBody?.categoryBitMask = otherAnimalCategory
        vole.physicsBody?.contactTestBitMask = playerCategory | otherAnimalCategory
        vole.physicsBody = SKPhysicsBody(rectangleOf: vole.frame.size)
        vole.physicsBody?.isDynamic = true

        addChild(vole)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else{
            return
        }
        
        let touchLocation = touch.location(in: self)
        
//        print(player.position.x.description)
        
    }
    
//    func didBegin(_ contact: SKPhysicsContact) {
//        print("Contact!")
//        if(contact.bodyA.node == player || contact.bodyB.node == lion){
//            print("Collided")
//
//        }
//    }
    func didBegin(_ contact: SKPhysicsContact) {
        print("contact!")
    }
    
    open func movePlayerUp(){
        let playerX = player.position.x;
        let playerY = player.position.y;
        let action2 = SKAction.move(to: CGPoint(x: playerX, y: playerY + 25), duration: 0.5)
        player.run(action2)
    }
    
    open func movePlayerDown(){
        let playerX = player.position.x;
        let playerY = player.position.y;
        let action2 = SKAction.move(to: CGPoint(x: playerX, y: playerY - 25), duration: 0.5)
        player.run(action2)
    }
    
    open func movePlayerRight(){
        let playerX = player.position.x;
        let playerY = player.position.y;
        let action2 = SKAction.move(to: CGPoint(x: playerX + 25, y: playerY), duration: 0.5)
        player.run(action2)
    }
    
    open func movePlayerLeft(){
        let playerX = player.position.x; // position of the player on the x-axis
        let playerY = player.position.y; // position of the player on the y-axis
        let action2 = SKAction.move(to: CGPoint(x: playerX - 25, y: playerY), duration: 0.5) // move animation
        player.run(action2) // run the move animation
    }
    
}
 
