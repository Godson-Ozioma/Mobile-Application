//
//  ChemReactViewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 19/05/2022.
//

import UIKit

class ChemReactViewController : UIViewController{
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        if (sender.state == .began || sender.state == .changed){
            let translation =  sender.translation(in: sender.view)
            let changeX = (sender.view?.center.x)! + translation.x
            let changeY = (sender.view?.center.y)! + translation.y
            
            self.view.center = CGPoint(x: changeX, y: changeY)
            sender.setTranslation(CGPoint.zero, in: sender.view)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
