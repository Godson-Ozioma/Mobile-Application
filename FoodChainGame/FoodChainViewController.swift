//
//  FoodChainViewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 18/05/2022.
//

import UIKit
import SpriteKit

class FoodChainViewController : UIViewController{
    
//    @IBOutlet weak var fileImageView : UIImageView!
    var player:SKSpriteNode? = nil
    var scene:GameScene? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scene = GameScene(size: view.bounds.size)
        player = scene?.player
        let skView = view as! SKView
        scene!.scaleMode = .resizeFill
        skView.presentScene(scene)
    }
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func swipedLeftAction(_ sender: UISwipeGestureRecognizer) {
        myLabel.text = "Swiped Left"
        scene?.movePlayerLeft()
    }
    
    @IBAction func swipeRightAction(_ sender: UISwipeGestureRecognizer) {
        myLabel.text = "Swiped Right"
        scene?.movePlayerRight()
    }
    
    @IBAction func swipeUpAction(_ sender: UISwipeGestureRecognizer) {
        myLabel.text = "Swiped Up"
        scene?.movePlayerUp()
    }
    
    @IBAction func swipeDownAction(_ sender: UISwipeGestureRecognizer) {
        myLabel.text = "Swiped Down"
        scene?.movePlayerDown()
    }
    
//    func addPanGesture(view: UIView){
//        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(sender:)))
//        view.addGestureRecognizer(pan)
//    }
//
//    @objc func handlePan(sender: UIPanGestureRecognizer){
//        let fileView = sender.view
//        let translation = sender.translation(in: view)
//    }
}
